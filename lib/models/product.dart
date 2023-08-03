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
      title: "Office Code",
      price: 4241,
      size: 12,
      description: dummyText,
      image: "assets/images/orange.png",
      color: Color.fromARGB(255, 247, 141, 95)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 3254,
      size: 8,
      description: dummyText,
      image: "assets/images/pink.png",
      color: Color.fromARGB(255, 246, 94, 165)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 1534,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 2634,
      size: 11,
      description: dummyText,
      image: "assets/images/oldblue.png",
      color: Color.fromARGB(255, 21, 50, 132)),
  Product(
      id: 5,
      title: "Office Code",
      price: 3134,
      size: 12,
      description: dummyText,
      image: "assets/images/oldpink.png",
      color: Color.fromARGB(255, 240, 53, 131)),
  Product(
    id: 6,
    title: "Office Code",
    price: 4234,
    size: 12,
    description: dummyText,
    image: "assets/images/red.png",
    color: Color.fromARGB(255, 239, 69, 69),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
