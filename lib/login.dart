import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LogIn extends StatelessWidget {
  String name = "Email or Phone";
  String password = "Password";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1877f2),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 70,
                      color: Colors.white,
                    ),
                    Text(
                      "FaceBook",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "Pacifico",
                      ),
                    ),
                    Text(
                      "ENG.Mohamed Abdelmoniem",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    Texttool("Email or Phone"),
                    Password("Password"),
                    Buttonlogin(),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButtonDown("Sing UP For FaceBook"),
                  TextButtonDown("Forgot Password?"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Texttool extends StatelessWidget {
  String name;
  Texttool(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
            focusColor: Colors.white,
            hintText: name,
            hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}

class Password extends StatelessWidget {
  String name;
  Password(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
      child: TextField(
        obscureText: true,
        obscuringCharacter: "*",
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: name,
            hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}

class Buttonlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Center(
        child: MaterialButton(
          color: Colors.blue,
          splashColor: Colors.white,
          padding: EdgeInsets.all(10),
          minWidth: 350,
          child: Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (buildContext) => HomeScreen()));
          },
        ),
      ),
    );
  }
}

class TextButtonDown extends StatelessWidget {
  String name;
  TextButtonDown(this.name);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ));
  }
}
