import 'package:flutter/material.dart';

class ex_btn extends StatelessWidget {
  late String btn_text;
  ex_btn(this.btn_text);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 3.2,
      child: ElevatedButton(
        child: Text(btn_text),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ex_btn(btn_text)));
        },
        style: ElevatedButton.styleFrom(
            //primary: Colors.red,
            //padding: EdgeInsets.symmetric(horizontal: 3, vertical: 32),
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
    );
  }
}