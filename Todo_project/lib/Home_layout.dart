import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_project/cubit/cubit.dart';
import 'package:todo_project/cubit/states.dart';

class Home_layout extends StatelessWidget
{
  var ScaffoldKey = GlobalKey<ScaffoldState>();
  var FormKey = GlobalKey<FormState>();

  var titleController= TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> AppCubit()..create_db(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context,AppStates state)
        {
          // طريقة اخرى غير الموجودة
          // if(state is App_insert_DB_State)
          // {
          //   Navigator.pop(context);
          //   AppCubit.get(context).is_buttonSheetShown = false;
          //   AppCubit.get(context).fabicon = Icons.edit;
          //
          //   titleController.text = "";
          //   timeController.text = "";
          //   dateController.text = "";
          // }
        },
        builder: (context,state)
        {

          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
          key: ScaffoldKey,
          appBar: AppBar(
            title: Text(cubit.title[cubit.currentIndex]),
          ),
          body:ConditionalBuilder(
            condition: state is! App_get_DB_Loding_State ,
            builder: (context)=>cubit.screen[cubit.currentIndex],
            fallback: (context)=>Center(child: CircularProgressIndicator()),
          ),

          //طريقة اخرى ل CircularProgressIndicator
          //cubit.tasks.length==0?Center(child: CircularProgressIndicator()):cubit.screen[cubit.currentIndex],
          floatingActionButton: FloatingActionButton(
            onPressed: () //async
            {
              if (cubit.is_buttonSheetShown) {
                if (FormKey.currentState!.validate()) {

                  cubit.insert_db(
                      title: titleController.text,
                      time: timeController.text,
                      date: dateController.text);

                  Navigator.pop(context);
                  cubit.is_buttonSheetShown = false;
                  cubit.fabicon = Icons.edit;

                  titleController.text = "";
                  timeController.text = "";
                  dateController.text = "";

                  // insert_db(
                  //     title: titleController.text,
                  //     time: timeController.text,
                  //     date: dateController.text)
                  //     .then((value) {
                  //
                  //   getData_db(database).then((value)
                  //   {
                  //     Navigator.pop(context);
                  //     // setState(() {
                  //     //
                  //     //   is_buttonSheetShown = false;
                  //     //   fabicon = Icons.edit;
                  //     //
                  //     //   tasks = value;
                  //     // });
                  //
                  //   });
                  // });
                }
              }
              else {
                ScaffoldKey.currentState?.showBottomSheet((context) => Container(
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    key: FormKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: titleController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "Title must not be Empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Task Title",
                              prefixIcon: Icon(Icons.title),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: timeController,
                          keyboardType: TextInputType.datetime,
                          onTap: () {
                            showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now())
                                .then((value) {
                              String? x = value?.format(context).toString();
                              timeController.text = x!;
                            });
                          },
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "Time must not be Empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Task Time",
                              prefixIcon: Icon(Icons.watch_later_outlined),
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: dateController,
                          keyboardType: TextInputType.datetime,
                          onTap: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse("2022-10-10"))
                                .then((value) {
                              String x = DateFormat.yMMMd().format(value!);
                              dateController.text = x;
                            });
                          },
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "Date must not be Empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Task Date",
                              prefixIcon: Icon(Icons.calendar_today),
                              border: OutlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                )
                ).closed.then((value) {
                  cubit.changbuttonSheetState(isshow: false, icon: Icons.edit);
                });
                cubit.changbuttonSheetState(isshow: true, icon: Icons.add);
              }
            },
            child: Icon(
              cubit.fabicon,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[300],
            elevation: 150,
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: "Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_circle_outline,
                  ),
                  label: "Done"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.archive_outlined,
                  ),
                  label: "Archived"),
            ],
            onTap: (index) {
                cubit.changeIndex(index);
            },
          ),
          );
        },
      ),
    );
  }

  //Future<String> getName() async {
  //  return "Mohammed Sada";
  //}


}


