import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Chillidet extends StatefulWidget {
  const Chillidet({Key? key}) : super(key: key);

  @override
  State<Chillidet> createState() => _ChillidetState();
}

class _ChillidetState extends State<Chillidet> {
  List l = ['Turmeric Powder'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/chilli.jpg'), fit: BoxFit.fill)),
        child: ListView.builder(
            itemCount: l.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            image: DecorationImage(
                                image: AssetImage('image/wheatfield.jpeg'),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(l[index]),
                            Container(
                              height: 20,
                              width: 40,
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  '5 kg',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Text('₹ 200/-')
                          ],
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
