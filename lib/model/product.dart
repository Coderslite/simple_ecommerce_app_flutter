import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Bag",
    price: 2000,
    size: 32,
    description: dummyText,
    image: "image/bag1.png",
    color: Color(0xFF3DB2AE),
  ),
  Product(
    id: 2,
    title: "Office Bag",
    price: 4000,
    size: 32,
    description: dummyText,
    image: "image/bag5.png",
    color: Color(0xFF989493),
  ),
  Product(
    id: 3,
    title: "Office Bag",
    price: 6000,
    size: 32,
    description: dummyText,
    image: "image/bag3.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 4,
    title: "Office Bag",
    price: 4000,
    size: 32,
    description: dummyText,
    image: "image/bag4.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 5,
    title: "Office Bag",
    price: 1000,
    size: 32,
    description: dummyText,
    image: "image/bag5.png",
    color: Color(0xFFAEAEAE),
  ),
    Product(
    id: 6,
    title: "Office Bag",
    price: 1000,
    size: 32,
    description: dummyText,
    image: "image/bag2.png",
    color: Color(0xFFFB7883),
  ),
];

String dummyText = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia mollitia ea voluptate modi corrupti quod, nemo id et sit amet soluta error nobis iusto, nihil reiciendis numquam. Atque eos cumque excepturi veniam nam debitis nesciunt quos accusantium sint dignissimos esse, deleniti voluptatibus et sit nisi, delectus molestiae quibusdam explicabo dicta a ex? Tenetur, temporibus voluptatum!";
