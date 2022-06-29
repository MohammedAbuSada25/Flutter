import 'package:alaa/gredview.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "اضافة عنوان جديد",
            style: TextStyle(
                color: Colors.brown[600],
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          elevation: 0,
          titleSpacing: 10,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.brown[600]),
        ),
        body: Stack(
          children: [
            Image.asset("assets/images/ma.png",
              height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
            Positioned(
                bottom: 50,
                right: 30,
                left: 30,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Text(
                                "المدينة",
                                style: TextStyle(
                                  color: Colors.brown[600],
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Text(
                              "العنوان",
                              style: TextStyle(
                                  color: Colors.brown[600],
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  "غزة",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.grey[700]),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10,right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text(
                                    "الرمال - برج وطن",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.grey[700]),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown[600],
                            minimumSize: Size.fromHeight(50),
                            maximumSize: Size.fromWidth(double.infinity)
                          ),
                            onPressed: (){
                              naviPush(context, GredScreen());
                            },
                            child: Text(
                              "حدد الموقع",
                              style: TextStyle(
                                fontSize: 22
                              ),))
                      ],
                    ),
                  ),
                )),
          ],
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
