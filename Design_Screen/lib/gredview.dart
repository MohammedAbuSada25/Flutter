import 'package:flutter/material.dart';

class GredScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          title: Text("كعك",
            style: TextStyle(
                color: Colors.brown[600],
                fontWeight: FontWeight.bold,
                fontSize: 22),),
        ),
        body: Container(
            color: Colors.grey[300],
            child:
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     mainAxisSpacing: 10,
            //     crossAxisCount: 2,
            //     childAspectRatio: 1.5
            //   ),
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Colors.white,
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Image.asset("assets/images/img1.png",height: 50,),
            //             ),
            //             Text(
            //               "الخبز قمح",
            //               style: TextStyle(
            //                   color: Colors.brown[600],
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 12),
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 50,
            //                     child: Text(
            //                       "50\$",
            //                       style: TextStyle(
            //                           color: Colors.black,
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 12),
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                     width: 25,
            //                     height: 25,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(5),
            //                       color: Colors.brown[600],
            //                     ),
            //                     child: IconButton(
            //                         onPressed: () {},
            //                         icon: Icon(
            //                           Icons.shopping_cart_outlined,
            //                           color: Colors.grey,
            //                           size: 15,
            //                         ))),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Colors.white,
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Image.asset("assets/images/img1.png",height: 50,),
            //             ),
            //             Text(
            //               "الخبز قمح",
            //               style: TextStyle(
            //                   color: Colors.brown[600],
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 12),
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(8.0),
            //                   child: Container(
            //                     width: 50,
            //                     child: Text(
            //                       "50\$",
            //                       style: TextStyle(
            //                           color: Colors.black,
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 12),
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                     width: 25,
            //                     height: 25,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(5),
            //                       color: Colors.brown[600],
            //                     ),
            //                     child: IconButton(
            //                         onPressed: () {},
            //                         icon: Icon(
            //                           Icons.shopping_cart_outlined,
            //                           color: Colors.grey,
            //                           size: 15,
            //                         ))),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //
            //   ],
            // ),

            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/img1.png",height: 80,),
                      Text(
                        "الخبز قمح",
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "50\$",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          Container(
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
                  color: Colors.white30,
                ),
              ],
            )
        ),
      ),
    );
  }


}
