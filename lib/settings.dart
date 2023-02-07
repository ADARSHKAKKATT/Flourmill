import 'package:flutter/material.dart';

class Settngs extends StatefulWidget {
  const Settngs({Key? key}) : super(key: key);

  @override
  State<Settngs> createState() => _SettngsState();
}

class _SettngsState extends State<Settngs> {
  List l = [
    'Terms of Use & privacy Policy',
    'Open source licenses',
    'License details for open source software',
    'App Version',
    '7.1.4765'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(itemBuilder: (context, index) => (context, index) => ,),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              height: 60,
              width: double.maxFinite,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Personal',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Language',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 3,),
                  Text('Choose your language',style: TextStyle(fontSize: 16,color: Colors.grey
                  ),),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('About',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Terms of Use & privacy Policy',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            Container(
              height: 60,
              width: double.maxFinite,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Open source licenses',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 3,),
                  Text('License details for open source software',style: TextStyle(fontSize: 16,color: Colors.grey
                  ),),
                ],
              ),
            ),

            Container(
              height: 60,
              width: double.maxFinite,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('App Version',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 3,),
                  Text('7.1.4765',style: TextStyle(fontSize: 16,color: Colors.grey
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
