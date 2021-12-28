import 'package:angela_yu/screen/cart/cart_item.dart';
import 'package:flutter/material.dart';

class CardItemCard extends StatelessWidget {
  const CardItemCard({
    Key? key, required this.cart,
  }) : super(key: key);

  final CartItem cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.image),
            ),
          ),
        ),
        SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                style: TextStyle(fontSize: 16, color: Colors.black),
                maxLines: 2,
              ),
              SizedBox(height: 2),
              Text.rich(
                TextSpan(
                    text: "\nN${cart.product.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                    children: [
                      TextSpan(
                        text: " x2",
                        style: TextStyle(color: Colors.grey),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}