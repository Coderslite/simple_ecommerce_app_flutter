import 'package:angela_yu/model/product.dart';
import 'package:flutter/material.dart';

class CartItem {
  final Product product;
  final int numOfItems;
  CartItem({required this.product, required this.numOfItems});
}

List<CartItem> myCarts = [
  CartItem(product: products[0], numOfItems: 2),
  CartItem(product: products[1], numOfItems: 1),
  CartItem(product: products[3], numOfItems: 1),
];
