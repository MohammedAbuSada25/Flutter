 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/Layout/newsapp/news_layout.dart';
 import 'package:bloc/bloc.dart';
import 'package:news_app/bloc_observer.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

void main() {
  Bloc.observer = MyBlocObserver();
 DioHelper.inti();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.deepOrange,

        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          backgroundColor: Colors.white,
          elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme:IconThemeData(
            color: Colors.black,
          ) ,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          elevation: 20.0,
        ),
      ),
       darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black87,
       ),
       themeMode: ThemeMode.light,
       home:NewsLayout(),
    ) ;
  }

}