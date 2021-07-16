import 'package:flutter/material.dart';
import 'package:project/Extra/product.dart';


class ItemCard extends StatelessWidget{
  final Product product;

  const ItemCard ({
    Key? key,
    required this.product,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    return  Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(padding: EdgeInsets.only(right: 5)),
        Card(
          elevation: 1,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[200],


          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

            ),
            child: Image.asset(product.image),
          ),
        ),
        Text("\$${product.Price}")
      ],
    );
  }

}
