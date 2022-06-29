import 'package:alaa/addaddress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          title: Text(
            "مخبوزات اليازجي",
            style: TextStyle(
                color: Colors.brown[600],
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          iconTheme: IconThemeData(color: Colors.brown[600]),
        ),
        body: Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/element.png",
                    height: 150,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "الخبز قمح",
                            style: TextStyle(
                                color: Colors.brown[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),
                        Text(
                          "50₪",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "مخابز اليازجي في قطاع غزة لجميع أنواع المخبوزات والمعجنات والكيك",
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown[600],
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ))),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          height: 50,
                          child: Center(
                              child: Text(
                            "01",
                            style: TextStyle(fontSize: 22, color: Colors.grey),
                          )),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ))),
                      ),
                      Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.brown[600],
                              )))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown[600],
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        icon: Icon(Icons.shopping_cart_outlined),
                        onPressed: () {
                          naviPush(context, AddAddressScreen());
                        },
                        label: Text(
                          "أضف الى السلة ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "أحدث المنتجات",
                          style: TextStyle(
                              color: Colors.brown[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Text("عرض الكل",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img1.png")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img2.png")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img3.png")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img.jpg")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img.jpg")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img.jpg")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 70,
                                        height: 70,
                                        child:
                                        Image.asset("assets/images/img.jpg")),
                                  ),
                                  Text(
                                    "الخبز قمح",
                                    style: TextStyle(
                                        color: Colors.brown[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          child: Text(
                                            "50\$",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.brown[600],
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.grey,
                                                size: 15,
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  )
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
