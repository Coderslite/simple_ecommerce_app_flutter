import 'package:angela_yu/model/product.dart';
import 'package:angela_yu/screen/cart/cart_item.dart';
import 'package:angela_yu/screen/cart/component/cart_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ListView.builder(
        itemCount: myCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(myCarts[index].product.id.toString()),
            background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                  ],
                ),),
                onDismissed: (direction) => setState(() {
                  myCarts.removeAt(index);
                }),
            child: CardItemCard(
              cart: myCarts[index],
            ),
          ),
        ),
      ),
    );
  }
}
