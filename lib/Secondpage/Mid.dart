import 'package:badges/badges.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Contain.dart';
import 'package:project/Fristpage/Front.dart';
import 'package:project/Lastpage.dart';
import 'package:project/main.dart';
class MyMidPage extends StatefulWidget{
  @override
  _MyMidPageState createState() => _MyMidPageState();
}

class _MyMidPageState extends State<MyMidPage> {
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
    final height = MediaQuery.of(context).size.height;
    return Stack(

      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
         bottom:height/8,
          child: Image(

            image: AssetImage('images/Gshirt.jpeg'),),
        ),
        Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Example()));
            },
                child: Icon(Icons.arrow_back,color: Colors.tealAccent,)),

            actions: [
              FavoriteButton(
                iconColor: Colors.tealAccent,
                iconDisabledColor: Colors.white,
                iconSize: 30,
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),


              FlatButton(onPressed: () {  },
                  child: Badge(
                    badgeColor: Colors.teal,
                      badgeContent: Text('3'),child: Icon(Icons.shopping_bag_outlined,color: Colors.tealAccent,)))],
          ),
        ),




        Container(
          height: 300,
          margin: EdgeInsets.only(top: height*0.7),

          decoration: BoxDecoration(
             color:   Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[



             Row(

               children: <Widget>[
                 SizedBox(width: 20,),
                 Text('OFF WHITE-shirt',style: TextStyle(decoration:TextDecoration.none,fontWeight: FontWeight.bold,color: Colors. tealAccent,fontSize:20),),
                 SizedBox(width: 90,),
                 Text('₹',style: TextStyle(decoration: TextDecoration.none,color: Colors.tealAccent),),
                 Text('1400',style: TextStyle(decoration:TextDecoration.none,fontWeight: FontWeight.bold,color: Colors. tealAccent,fontSize:20),),

               ],
             ),


              SizedBox(height: 4,),



            Row(
              children: <Widget>[
                SizedBox(width: 30,),


                Column(
                  children: [


                    Container(
                      height: 65,
                      width: 80,

                      decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: 2,),
                              Text('size',style: TextStyle(fontSize: 14,decoration: TextDecoration.none,color: Colors.black,fontWeight: FontWeight.w100)),
                            ],
                          ),
                          Center(child: Text('LARGE',style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),)),
                        ],
                      ),
                    ),


                    SizedBox(height: 5,),


                    Container(
                      height: 65,
                      width: 80,

                      decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: 2,),
                              Text('color',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 14,decoration: TextDecoration.none,color: Colors.black)),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Center(child:Container(height: 10,
                          width: 50,
                          color: Colors.black12,)),
                        ],
                      ),
                    ),
                  ],

                ),



                SizedBox(width: 20,),



                Column(
                  children: [



                    Container(
                      height: 65,
                      width: 170,

                      decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Container(
                        height: 60,
                        width: 169,
                        child: Row(


                          children: <Widget>[

                            TextButton(onPressed: (){
                              _incrementcount();
                            }, child: Text('+',style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),),

                            Text('$_count',style: TextStyle(decoration: TextDecoration.none,fontSize: 14),),

                            TextButton(
                              onPressed: (){
                                _decrementcount();
                              }, child: Text("-",style: TextStyle(decoration: TextDecoration.none,fontSize: 20),),)


                          ],
                        )
                      ) ,
                    ),




                    SizedBox(height: 5,),
                    Container(
                      height: 65,
                      width: 170,

                      decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),

                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child:  Column(
                        children: [
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: 2,),
                              Text('composition',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 14,decoration: TextDecoration.none,color: Colors.black)),
                            ],
                          ),
                          Center(child: Text('SILK BAMBOO',style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),)),
                        ],
                      ),
                    ),



                  ],
                ),
                SizedBox(width: 30,),
                Container(
                  height: 120,
                  width: 80,

                  decoration: BoxDecoration( border: Border.all(color: Colors.tealAccent),
                      color: Colors.tealAccent,

                      borderRadius: BorderRadius.all(Radius.circular(10)),

                  ),
                  child: FlatButton(onPressed: () {  },
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                     ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.tealAccent),
                       onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyLastPage()));
                       }, child: Icon(Icons.add),),
                      Center(child: Text('Add')),
                    ],
                  ),),
                ),



              ],
            )
            ],
          ),
        )
      ],
    );

  }
}