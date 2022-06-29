
import 'package:alaa/addaddress.dart';
import 'package:alaa/element.dart';
import 'package:alaa/gredview.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var email = TextEditingController();
  var password = TextEditingController();
  bool visible = true;
  IconData icon = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text("تسجيل الدخول",
              style: TextStyle(
                  color: Colors.brown[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),),
          ),
        ),
        body: Container(
          color: Colors.grey[300],
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/login.png"),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(

                          labelText: 'البريد الالكتروني او رقم الجوال',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextField(
                        controller: password,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: visible,
                        decoration: InputDecoration(
                          labelText: 'كلمة المرور',
                          suffixIcon: IconButton(
                              icon: Icon(icon),
                              onPressed: (){
                                setState(() {
                                  visible = !visible;
                                  if(visible){
                                    icon = Icons.remove_red_eye;
                                  }
                                  else
                                    icon = Icons.remove_shopping_cart_rounded;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown[600],
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: (){




                       // naviPush(context, GredScreen());
                      },
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22),)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }





  void naviPush(BuildContext context, Widget widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
