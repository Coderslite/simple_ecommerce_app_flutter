import 'dart:developer';

import 'package:angela_yu/profile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:angela_yu/forgetpass.dart';

import 'login.dart';

class forpass extends StatelessWidget {
  TextEditingController username = TextEditingController();
  String user = "admin@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
             
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 96, left: 8, right: 8, bottom: 40),
                      child: TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Your Username",
                          hintText: "Enter Your Username to Forget Password",
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.yellow),
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                          onPressed: () {
                            if (username.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Enter Your Mail",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM);
                            } else if (username.text != user) {
                              Fluttertoast.showToast(
                                  msg: "Enter a Valid Email",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM);
                            } else if (username.text == user) {
                              Fluttertoast.showToast(
                                  msg: "Please Check Your Mail",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => profile()));
                            }
                          },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(fontSize: 32, color: Colors.grey),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.yellow),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            },
                            child: Text("Back",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
