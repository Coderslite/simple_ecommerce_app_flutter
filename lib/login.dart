import 'dart:ui';
import 'package:angela_yu/forgetpass.dart';
import 'package:angela_yu/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:angela_yu/forgetpass.dart';


import 'ex_btn.dart';
import 'signup.dart';

class login extends StatelessWidget {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  String user = "admin";
  String pass = "user";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Icon(
                  Icons.account_box_rounded,
                  size: 180,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Container(
                  //height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 70, left: 16, right: 16, bottom: 24),
                        child: TextField(
                          controller: usercontroller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "username",
                              hintText: "Enter Psername",
                              icon: Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: TextField(
                          controller: passcontroller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password",
                              hintText: "Enter Password",
                              icon: Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forpass()));
                            },
                            child: Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                  child: TextButton(
                      onPressed: () {
                        if (usercontroller.text.isEmpty ||
                            passcontroller.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Enter user and Pass for Login",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM);
                        } else if (usercontroller.text != user ||
                            passcontroller.text != pass) {
                          Fluttertoast.showToast(
                              msg: "Your username or Password is Incorrect",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM);
                        } else if (usercontroller.text == user &&
                            passcontroller.text == pass) {
                          // Fluttertoast.showToast(
                          //     msg: "Welcome, Your are Loged In",
                          //     toastLength: Toast.LENGTH_SHORT,
                          //     gravity: ToastGravity.BOTTOM);
                            Navigator.push(context,
                               MaterialPageRoute(builder: (context) => HomeScreen()));
                        }
                        //else if(){}
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ))),
              //....................................................................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          "If you are not in Infa Community",
                          style: TextStyle(fontSize: 16, color: Colors.black),
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
                              Fluttertoast.showToast(
                                  msg: "Let's go Strider",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup()));
                            },
                            child: Text(
                              "Create Account",
                              style:
                                  TextStyle(fontSize: 32, color: Colors.grey),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
