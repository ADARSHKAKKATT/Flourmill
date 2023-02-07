import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: Column(
            children: [
              Container(
                // color: Colors.yellowAccent,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 270,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('image/rating_ph.jpg'),
                        fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('Your opinion matters to us!',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w800
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Container(
                        // height: 200,
                        // width: 180,
                        // color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('We work super hard to make Glose better for you, and would love to know: how would you rate our app?',
                          style: TextStyle(color: Colors.grey,fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      // itemSize: 30,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        size: 60,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text('Submit',style: TextStyle(
                          color: Colors.white,fontSize: 15,fontWeight: FontWeight.w900
                        ),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('No Thanks',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
