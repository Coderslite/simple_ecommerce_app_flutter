import 'package:angela_yu/model/product.dart';
import 'package:angela_yu/screen/details/components/details_screen.dart';
import 'package:angela_yu/screen/home/component/categories.dart';
import 'package:angela_yu/screen/home/component/item_card.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women's Bag",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(product: products[index]),),),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
