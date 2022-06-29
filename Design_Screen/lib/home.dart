import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.grey[400],
          drawer: const Drawer(),
          appBar: AppBar(
            leading: const Icon(Icons.arrow_back_ios),
            title: const Text("المخابز"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image(
                              image: AssetImage("assets/images/img.jpg"),
                              height: 150,
                              width: 150),
                        ),
                        Column(
                          children: [
                            const Text("data"),
                            ratingBar(),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image(
                              image: AssetImage("assets/images/img.jpg"),
                              height: 150,
                              width: 150),
                        ),
                        Column(
                          children: [
                            const Text("data"),
                            ratingBar(),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image(
                              image: AssetImage("assets/images/img.jpg"),
                              height: 150,
                              width: 150),
                        ),
                        Column(
                          children: [
                            const Text("data"),
                            ratingBar(),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image(
                              image: AssetImage("assets/images/img.jpg"),
                              height: 150,
                              width: 150),
                        ),
                        Column(
                          children: [
                            const Text("data"),
                            ratingBar(),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image(
                              image: AssetImage("assets/images/img.jpg"),
                              height: 150,
                              width: 150),
                        ),
                        Column(
                          children: [
                            const Text("data"),
                            ratingBar(),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Image(
                              image: AssetImage("assets/images/img.jpg"),
                              height: 150,
                              width: 150),
                        ),
                        Column(
                          children: [
                            const Text("data"),
                            ratingBar(),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget ratingBar() => RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      );
}
