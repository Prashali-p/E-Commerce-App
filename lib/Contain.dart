import 'package:flutter/material.dart';

class Countpage extends StatefulWidget{
  @override
  _CountpageState createState() => _CountpageState();
}

class _CountpageState extends State<Countpage> {
  int _count =0;
  void _incrementcount() {
    setState(() {
      _count++;
    });

}
void _decrementcount(){
    setState(() {
      _count--;
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             TextButton(child:Icon(Icons.plus_one),onPressed: (){
                _incrementcount();
              }),
              Text('$_count'),
              TextButton(child:Icon(Icons.exposure_minus_1),onPressed: (){
                _decrementcount();
              }),


            ],
          ),
        ),
      ),
    );
  }
}


