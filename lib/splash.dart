import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Image.asset("image/welcome.JPG"),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                  child: Text("Infa",
                      style: TextStyle(
                        fontSize: 104,
                      ))),
            ),
            Container(
              child: Text(
                "Yes, we Can",
                style: TextStyle(fontSize: 72, color: Colors.pink),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Text(
                "Please Wait..........",
                style: TextStyle(fontSize: 24, color: Colors.pink),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
