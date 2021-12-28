import 'package:angela_yu/screen/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back, color: Colors.black, size:35,),
      //   onPressed: () {},
      // ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("image/search.svg"),
        ),
        IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartList(),
            ),
          ),
          icon: SvgPicture.asset("image/cart.svg"),
        ),
      ],
    );
  }
}
