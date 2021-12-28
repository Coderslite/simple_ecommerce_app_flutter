import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:angela_yu/forgetpass.dart';

import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passControlar = TextEditingController();
  TextEditingController namecontrolar = TextEditingController();

  TextEditingController mailcontrolar = TextEditingController();

  TextEditingController mobilecontrolar = TextEditingController();

  TextEditingController passcontrolar = TextEditingController();

  TextEditingController conpasscontrolar = TextEditingController();

  String fname = "Jubaid Amin";

  String maddress = "admin@gmail.com";

  String mobile = "01972570220";

  String password = "user";

  String conpassword = "user";

  int Radiovalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Center(
              child: Container(
                child: Icon(
                  Icons.person,
                  size: 200,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                            controller: namecontrolar,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Full Name",
                                hintText: "Enter Full Name",
                                icon: Icon(
                                  Icons.edit,
                                  size: 30,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                            controller: usernameController,
                            //controller: mailcontrolar,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Mail Address",
                                hintText: "Enter Mail Address",
                                icon: Icon(
                                  Icons.edit,
                                  size: 30,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                            controller: mobilecontrolar,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Mobile No",
                                hintText: "Enter Mobile No",
                                icon: Icon(
                                  Icons.edit,
                                  size: 30,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                            controller: passcontrolar,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password",
                                hintText: "Enter Password",
                                icon: Icon(
                                  Icons.edit,
                                  size: 30,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextField(
                            controller: passControlar,
                            //controller: conpasscontrolar,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password",
                                hintText: "Enter Password",
                                icon: Icon(
                                  Icons.edit,
                                  size: 30,
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                  setShapref();

                  if (namecontrolar.text.isEmpty ||
                      mailcontrolar.text.isEmpty ||
                      mobilecontrolar.text.isEmpty ||
                      passcontrolar.text.isEmpty ||
                      conpasscontrolar.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "Fill all From",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                  } else if (passcontrolar.text != conpasscontrolar.text) {
                    Fluttertoast.showToast(
                        msg: "Password Not Match",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                  } else if (namecontrolar.text == fname &&
                      mailcontrolar.text == maddress &&
                      mobilecontrolar.text == mobile &&
                      passcontrolar.text == password &&
                      conpasscontrolar.text == conpassword) {
                    Fluttertoast.showToast(
                        msg: "Your are Signed Up",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  }
                  /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile())); */
                  Fluttertoast.showToast(
                      msg: Radiovalue.toString(),
                      toastLength: Toast.LENGTH_SHORT);
                },
                child: Text("Signup",
                    style: TextStyle(fontSize: 32, color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "Already Have Account?",
                        style: TextStyle(color: Colors.black),
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
                          Fluttertoast.showToast(
                              msg: "Let's go Strider",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 32, color: Colors.grey),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }



  setShapref() async {
    final pref = await SharedPreferences.getInstance();

    pref.setString("user_name", usernameController.text);
    pref.setString("pass", passControlar.text);
  }
}
