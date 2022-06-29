import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_project/cubit/states.dart';
import 'package:todo_project/modules/todo/Archived.dart';
import 'package:todo_project/modules/todo/Done.dart';
import 'package:todo_project/modules/todo/Tasks.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) =>BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screen = [Tasks(), Done(), Archived()];
  List<String> title = ["Tasks", "Done", "Archived"];
  late Database database;
  List<Map> tasks = [];
  List<Map> done = [];
  List<Map> archive = [];

  void changeIndex(int index)
  {
    currentIndex = index;
    emit(App_Change_BottomNavigationBar_State());
  }

  void create_db()  {
    openDatabase("todo.db", version: 1,
        onCreate: (database, version)  {
          print("database is created");

           database.execute(
              'create table Tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)'
           ).then((value) {
            print("table created");
          }).catchError((error) {
            print(error.toString());
          });
        }, onOpen: (database)
        {
          getData_db(database);
          print("database is opened");

        }).then((value) {
          database=value;
          emit(App_create_DB_State());
        });

  }

  insert_db(
      {
        required String title,
        required String time,
        required String date
      }) async
  {
    database.transaction((txn)  {
      return txn.rawInsert(
          "INSERT INTO Tasks(title, date, time, status) VALUES('$title','$date','$time','new')"
      ).then((value)
      {
        print("$value inserted successfully");
        emit(App_insert_DB_State());
        getData_db(database);

      }).catchError((error)
      {
        print(error.toString());
      });
    });
  }

  void getData_db(db)
  {
    tasks = [];
    done = [];
    archive = [];

    emit(App_get_DB_Loding_State());
    db.rawQuery("SELECT * FROM Tasks").then((value)
    {
      //tasks = value;
      print(tasks);

      value.forEach((element) {
        if (element['status'] == "new")
        {
          tasks.add(element);
        }
        else if (element['status'] == "done")
        {
          done.add(element);
        }
        else archive.add(element);
      });

      emit(App_get_DB_State());
    });

  }

  void updateData({required String status ,required int id})
  {
    // Update some record
    database.rawUpdate(
        'UPDATE Tasks SET status = ? WHERE id = ?',
        ['$status', id]
    ).then((value)
    {
      getData_db(database);
      emit(App_update_DB_State());
    });

  }

 void deleteData({required int id})
  {
    // Update some record
    database.rawDelete('DELETE FROM Tasks WHERE id = ?',
        [id]
    ).then((value)
    {
      getData_db(database);
      emit(App_delete_DB_State());
    });
  }

  bool is_buttonSheetShown = false;
  IconData fabicon = Icons.edit;

  void changbuttonSheetState({required bool isshow, required IconData icon})
  {
    is_buttonSheetShown = isshow;
    fabicon = icon;
    emit(App_changbuttonSheet_State());
  }


}