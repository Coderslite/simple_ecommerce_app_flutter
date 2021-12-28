import 'package:angela_yu/screen/cart/cart_item.dart';
import 'package:angela_yu/screen/cart/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${myCarts.length} Items",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        // backgroundColor: Colors.transparent,
      ),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 40),
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: Column(
        children: [
          Row(children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.book_online,
                size: 22,
                color: Colors.redAccent,
              ),
            ),
            Spacer(),
            Text("Add Your Voucher"),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              size: 12,
              color: Colors.black,
            ),
          ]),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Total: \n",
                  children: [
                    TextSpan(
                      text: "\n N4,000",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Chech Out",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
