import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project/Contain.dart';
import 'package:project/Lastpage.dart';
import 'package:project/Secondpage/Mid.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:badges/badges.dart';


import 'Fristpage/Front.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Example(),
    );
  }
}

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[

          IconButton(onPressed: (){},

              icon: Badge(
                badgeColor: Colors.teal,
                  badgeContent: Text('3'),
                  child: Icon(Icons.shopping_bag_outlined,color: Colors.tealAccent,))),
        ],
        leading:IconButton(icon: Icon(Icons.menu),color: Colors.tealAccent, onPressed: () {  },),
        title: Center(child: Text('ISSACS',style: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.bold),)),

      ),
      bottomNavigationBar: CurvedNavigationBar(

        backgroundColor: Colors.white,
        color: Colors.tealAccent,
        items: [
        Icon(Icons.add, size: 30),
          Icon(Icons.home,size: 30,),
          Icon(Icons.dashboard_outlined,size: 30,),
          Icon(Icons.watch_later_outlined,size: 30,),
          Icon(Icons.face,size: 30,),

      ],
      ),
      body:Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20)),
      Center(
      child: Container(
        color: Colors.white,
        width: 350,
        child: TextField(

            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                hintText: 'Search Product',
                hintStyle: TextStyle(color: Colors.black54),
                prefixIcon: Icon(
                  Icons.search,color: Colors.black54,),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.all(Radius.circular(7),


                    )))),

      ),
    ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Expanded(child:  DefaultTabController(
            length: 6,
            child: Column(
              children: <Widget>[
                ButtonsTabBar(


                  backgroundColor: Colors.transparent,
                  unselectedBackgroundColor: Colors.white,
                  unselectedLabelStyle: TextStyle(color: Colors.black),
                  borderWidth: 0,
                  radius: 500,
                  labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(icon: CircleAvatar(
                      backgroundImage: AssetImage('images/shirt.jpeg'),
                    backgroundColor: Colors.transparent,)),
                    Tab(icon: CircleAvatar(
                      backgroundImage: AssetImage('images/shoe.jpeg'),
                      backgroundColor: Colors.transparent,)),
                    Tab(icon: CircleAvatar(
                      backgroundImage: AssetImage('images/bag.jpeg'),
                      backgroundColor: Colors.transparent,)),
                    Tab(icon: CircleAvatar(
                      backgroundImage: AssetImage('images/shoes.png'),
                      backgroundColor: Colors.transparent,)),
                    Tab(icon: CircleAvatar(
                      backgroundImage: AssetImage('images/shoes.png'),
                      backgroundColor: Colors.transparent,)),
                    Tab(icon: CircleAvatar(
                      backgroundImage: AssetImage('images/shoes.png'),
                      backgroundColor: Colors.transparent,)),
                  ],
                ),
                SizedBox(height: 15,),
                Row(


                  children: <Widget>[SizedBox(width: 10,),Text('NEW ARRIVALS',style: TextStyle(color: Colors.tealAccent,fontWeight: FontWeight.bold,fontSize:20),),
                    SizedBox(width: 200,),
                    Icon(Icons.arrow_forward_outlined,color: Colors.tealAccent,)],
                ),

                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 30),
                        child: Expanded(child: MyFrontPage(),),),
                      Center(
                        child: Icon(Icons.directions_car),
                      ),
                      Center(
                        child: Icon(Icons.directions_transit),
                      ),
                      Center(
                        child: Icon(Icons.directions_bike),
                      ),
                      Center(
                        child: Icon(Icons.directions_car),
                      ),
                      Center(
                        child: Icon(Icons.directions_transit),
                      ),




                    ],
                  ),
                ),
              ],
            ),
          ),)
        ],
      )
    );
    
  }
}
