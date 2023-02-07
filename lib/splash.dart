import 'package:e_commerce/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Ecomm()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: AssetImage("image/splash.jpg"), fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
