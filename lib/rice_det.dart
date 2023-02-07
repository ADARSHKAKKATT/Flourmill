import 'package:e_commerce/fav_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class Ricedetail extends StatefulWidget {
  const Ricedetail({Key? key}) : super(key: key);

  @override
  State<Ricedetail> createState() => _RicedetailState();
}

class _RicedetailState extends State<Ricedetail> {
  List l = ['Roasted Rice', 'Rice Powder'];
  @override
  Widget build(BuildContext context) {
    final p = Provider.of<Favprovider>(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/rice_flour.jpg'), fit: BoxFit.fill)),
        child: ListView.builder(
            itemCount: l.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Container(
                  height: 80,
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
                                image: AssetImage('image/rice.jpg'),fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(l[index]),
                            Container(
                              height: 20,
                              width: 40,
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  '10 kg',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Text('₹ 320/-')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            /*InkWell(
                              onTap: (){
                                p.selectedfav(l[index]);
                              },
                              Text: p.isFav(l[index])?
                                  Center(child: Text('Go to Favourite')):
                              Center(
                                child: Text('Add to Favourite',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                              ),*/
                              /*child:*/ Container(
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(style: BorderStyle.solid)
                                ),
                                child: Center(
                                  child: Text('Add to Favourite',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            // )
                          ],
                        ),
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
