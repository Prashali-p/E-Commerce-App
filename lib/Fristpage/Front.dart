import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project/Secondpage/Mid.dart';
class MyFrontPage extends StatelessWidget{
  final List<String> imageList =[
    'images/Gshirt.jpeg',
    'images/shirt.jpeg',

    'images/shirt.jpeg',
    'images/glshirt.jpeg',
    'images/Gshirt2.jpeg',
    'images/shirt.jpeg',
    'images/shirt.jpeg',
    'images/shirt.jpeg',


  ];
  final List<int> price =[200];

  @override
  Widget build(BuildContext context) {
    return  new StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                fit:StackFit.expand,
                children: <Widget>[
                  Card(
                    child: InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyMidPage()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image.asset(
                          imageList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    elevation: 2,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: CircleAvatar(

                      backgroundColor: Colors.grey,
                      child: FavoriteButton(
                        iconColor: Colors.tealAccent,
                        iconDisabledColor: Colors.white,
                        iconSize: 30,
                        isFavorite: true,
                        // iconDisabledColor: Colors.white,
                        valueChanged: (_isFavorite) {
                          print('Is Favorite : $_isFavorite');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('${price}')


          ],
        ),

      ),


      staggeredTileBuilder: (int index) =>

      new StaggeredTile.count(1, index.isEven ? 1.6: 1.2),

      mainAxisSpacing: 10.0,
      crossAxisSpacing: 8.0,
    );

  }

}