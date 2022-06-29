import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:todo_project/cubit/cubit.dart';

Widget defaultButton({
  double width = double.infinity,
  Color bakcground = Colors.lightBlue,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        height: 40.0,
        onPressed: function(),
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          color: bakcground, borderRadius: BorderRadius.circular(10.0)),
    );

void defaultFormField({
  @required TextEditingController? controller,
  @required TextInputType? type,
  Function? onSubmit,
  Function? onChange,
  bool? isPassword,
}) {}

Widget buildTaskItem(Map modle, context) => Dismissible(
      key: Key(modle['id'].toString()),
      onDismissed: (direction) {
        AppCubit.get(context).deleteData(
          id: modle['id'],
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              child: Text("${modle['time']}"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${modle['title']}",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${modle['date']}",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            IconButton(
                onPressed: () {
                  AppCubit.get(context)
                      .updateData(status: "done", id: modle['id']);
                },
                icon: Icon(
                  Icons.check_box_outlined,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {
                  AppCubit.get(context)
                      .updateData(status: "archive", id: modle['id']);
                },
                icon: Icon(
                  Icons.archive_outlined,
                  color: Colors.black54,
                )),
          ],
        ),
      ),
    );

Widget taskBuilder(List<Map> tasks) => ConditionalBuilder(
      condition: tasks.length > 0,
      builder: (context) => ListView.separated(
          itemBuilder: (context, index) => buildTaskItem(tasks[index], context),
          separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
          itemCount: tasks.length),
      fallback: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              color: Colors.grey,
              size: 100.0,
            ),
            Text(
              "No Tasks Yet, Please Add Some Tasks",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
