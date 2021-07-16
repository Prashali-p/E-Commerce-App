import 'package:flutter/material.dart';


class Product{
  final String image;
  final int Price;

  Product({
    required this.image,
    required this.Price,
  });
}
List<Product> products =[
  Product(
      image:"images/shirt.jpeg",
      Price: 300
  ),
  Product(
      image:"images/shirt.jpeg",
      Price: 400
  ),
  Product(
      image:"images/shirt.jpeg",
      Price: 300
  ),
  Product(
      image:"images/shirt.jpeg",
      Price: 300
  ),
  Product(
      image:"images/shirt.jpeg",
      Price: 300
  ),
];

