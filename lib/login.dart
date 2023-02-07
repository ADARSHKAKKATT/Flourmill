import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('image/wheatfield.jpeg'),fit: BoxFit.fill)
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Column(
                  children: [

                    SizedBox(
                      height: 80,
                    ),
                    Text('Login',style: TextStyle(
                      // color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                    ),),
                    SizedBox(
                      height: 40,
                    ),
                    Icon(Icons.person_rounded,
                        size: 90,
                    // color: Colors.deepOrange,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        // controller: email,
                        decoration: InputDecoration(
                            label: Text("Email"),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.mail)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        // controller: password,
                        decoration: InputDecoration(
                          label: Text("password"),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("SUBMIT"),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.indigo,
                      ),

                      /*TextButton(onPressed:(){}, child: Text("Submit"),
                      )*/
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      /*Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('image/wheatfield.jpeg'),fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  color: Colors.red.withOpacity(0.5),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              // controller: email,
                              decoration: InputDecoration(
                                  label: Text("Email"),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.mail)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),*/
    );
  }
}
