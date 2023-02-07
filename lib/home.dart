import 'package:e_commerce/chilly_det.dart';
import 'package:e_commerce/coriander_det.dart';
import 'package:e_commerce/login.dart';
import 'package:e_commerce/rating.dart';
import 'package:e_commerce/rice_det.dart';
import 'package:e_commerce/settings.dart';
import 'package:e_commerce/turmeric_det.dart';
import 'package:e_commerce/wheat_det.dart';
import 'package:flutter/material.dart';

class Ecomm extends StatefulWidget {
  const Ecomm({Key? key}) : super(key: key);

  @override
  State<Ecomm> createState() => _EcommState();
}

class _EcommState extends State<Ecomm> {
  List l = [
    'image/rice_flour.jpg',
    'image/wheat.jpg',
    'image/manjal.jpg',
    'image/chilli.jpg',
    'image/Malli-Powder.jpg'
  ];
  List Pages=[Ricedetail(),
    Wheatdet(),
    Turmericdet(),
    Chillidet(),
    Corianderdet()
  ];
  List det = ['Rice', 'Wheat', 'Turmeric', 'Chilli', 'Coriander'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white30,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Flour Mill',
          style:
              TextStyle(color: Colors.white, fontFamily: 'Itim', fontSize: 35),
        ),
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            const DrawerHeader(decoration:BoxDecoration(
              color: Colors.grey,
            ),child: Icon(Icons.surround_sound,size: 100,)),
            InkWell(onTap: (){
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              });
            },
              child: ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.person,color: Colors.blue,),
                      SizedBox(width: 20,),
                      Text(
                        'Login',
                      ),
                    ],
                  )),
            ),
            InkWell(onTap: (){
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rating()),
                );
              });
            },
              child: ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.star_rate,color: Colors.blue,),
                      SizedBox(width: 20,),
                      Text(
                        'Rate Us',
                      ),
                    ],
                  )),
            ),
            ListTile(
                title: Row(
                  children: [
                    Icon(Icons.share,color: Colors.blue,),
                    SizedBox(width: 20,),
                    Text(
                      'Share App',
                    ),
                  ],
                )),
            InkWell(onTap: (){
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settngs()),
                );
              });
            },
              child: ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.settings,color: Colors.blue,),
                      SizedBox(width: 20,),
                      Text(
                        'Settings',
                      ),
                    ],
                  )),
            ),
            // Container(height: 2,color: Colors.white,),
          ],

        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.maxFinite,
                // color: Colors.yellow,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("image/flourCover.jpg"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                width: double.maxFinite,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: l.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pages[index]),
                        );
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(l[index]), fit: BoxFit.fill),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.black.withOpacity(0.5),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    det[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
