// ignore: file_names
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Ecommerce App"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: height * 0.02,
            left: 0,
            right: 0,
            child: Column(
              children: [
                    Text("Recent Wears",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),),
                Container(
                  // color: Colors.blueGrey,
                  height: height * 0.34,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Image.asset(
                                    "image/dad.JPG",
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "Men's Wear",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "USD 120",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Image.asset(
                                    "image/dad.JPG",
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "Men's Wear",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "USD 120",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Image.asset(
                                    "image/dad.JPG",
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "Men's Wear",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "USD 120",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.64,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blueGrey,
              height: height * 0.14,
            ),
          ),
        ],
      ),
    );
  }
}
