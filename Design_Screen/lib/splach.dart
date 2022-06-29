import 'package:alaa/login.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      navigateTo(context, LoginScreen());
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash.png"),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text("مخابز غزة الهاشم",
                style: TextStyle(
                    color: Colors.yellow[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 22),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text("مخابز غزة الهاشم تضم افضل مخابز قطاع غزة",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }

  void navigateTo(BuildContext context, Widget widget) => Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
