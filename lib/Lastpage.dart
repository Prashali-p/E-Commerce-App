import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:project/Secondpage/Mid.dart';

import 'main.dart';
class MyLastPage extends StatefulWidget{
  @override
  _MyLastPageState createState() => _MyLastPageState();
}

class _MyLastPageState extends State<MyLastPage> {
  int _count =1;
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
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(child: Text('MyCart(3)',style: TextStyle(color: Colors.tealAccent),)),
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyMidPage()));
            },
                child: Icon(Icons.arrow_back,color: Colors.tealAccent,)),



          ),
          body:  Column(
          children: <Widget>[
            SizedBox(height: 10,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration( color: Colors.transparent
            ),
            child: Card(
              elevation: 0,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage('images/samp.jpg'),),

                    decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                      borderRadius: BorderRadius.all(Radius.circular(10)),

                    ),

                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: <Widget>[
                      Text('Delta - Tees',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text('Size-ExtraLarge(M)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('₹'),
                          Text('${400}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          SizedBox(width: 8,),
                          Text('₹'),
                          Text('${999.8}',style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w100),)
                        ],
                      )

                    ],
                  ),
                  SizedBox(width: 0,),
                  TextButton(onPressed: (){
                    _incrementcount();
                  }, child: Text('+',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),),

                  Text('$_count',style: TextStyle(decoration: TextDecoration.none,fontSize: 14),),

                  TextButton(
                      onPressed: (){
                        _decrementcount();
                      }, child: Text("-",style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),)


                ],
              ),
            )

          ),
            SizedBox(height: 10,),
            Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration( color: Colors.transparent
                ),
                child: Card(
                  elevation: 0,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage('images/samp.jpg'),),

                        decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: <Widget>[
                          Text('Delta - Tees',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text('Size-ExtraLarge(M)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('₹'),
                              Text('${400}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Text('₹'),
                              Text('${999.8}',style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w100),)
                            ],
                          )

                        ],
                      ),
                      SizedBox(width: 0,),
                      TextButton(onPressed: (){
                        _incrementcount();
                      }, child: Text('+',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),),

                      Text('$_count',style: TextStyle(decoration: TextDecoration.none,fontSize: 14),),

                      TextButton(
                        onPressed: (){
                          _decrementcount();
                        }, child: Text("-",style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),)


                    ],
                  ),
                )

            ),
            SizedBox(height: 10,),
            Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration( color: Colors.transparent
                ),
                child: Card(
                  elevation: 0,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage('images/samp.jpg'),),

                        decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: <Widget>[
                          Text('Delta - Tees',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text('Size-ExtraLarge(M)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w100),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('₹'),
                              Text('${400}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Text('₹'),
                              Text('${999.8}',style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.w100),)
                            ],
                          )

                        ],
                      ),
                      SizedBox(width: 0,),
                      TextButton(onPressed: (){
                        _incrementcount();
                      }, child: Text('+',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),),

                      Text('$_count',style: TextStyle(decoration: TextDecoration.none,fontSize: 14),),

                      TextButton(
                        onPressed: (){
                          _decrementcount();
                        }, child: Text("-",style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),)


                    ],
                  ),
                )

            ),
            SizedBox(height: 10,),
            Container(

              height: 60,
              width: 350,

              child: TextField(

                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        color: Colors.tealAccent,
                          icon: Icon(Icons.send), onPressed: () {  },),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Promo Code',
                      hintStyle: TextStyle(color: Colors.black54),
                                       border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.all(Radius.circular(7),


                          )))),

            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Subtotal:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
                SizedBox(width: 200,),
                Text('₹',),
                Text('${1600}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),)
              ],

            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Shipping:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
                SizedBox(width: 200,),
                Text('₹',),
                Text('${100}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),)
              ],

            ),SizedBox(height: 8,),
            DottedLine(),
            SizedBox(height: 8,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Bag Total:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
                SizedBox(width: 200,),
                Text('₹',),
                Text('${1700}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),)
              ],

            ),SizedBox(height: 10),
            MaterialButton(
              disabledColor: Colors.teal,
              height: 50,
              minWidth: 300,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: new Text("Proceed to Checkout"),
              onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Example()))
              },
              splashColor: Colors.redAccent,
            )

          ],
    ),


        ),
      ],
    );
  }
}