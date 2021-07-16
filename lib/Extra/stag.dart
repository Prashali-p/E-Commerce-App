import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class MyFrontPage extends StatelessWidget{
  final List<String> imageList =[
    'images/shirt.jpeg',
    'images/Gshirt.jpeg',
    'images/Gshirt.jpeg',
    'images/shirt.jpeg',
    'images/shirt.jpeg',
    'images/shirt.jpeg',
    'images/shirt.jpeg',
    'images/shirt.jpeg',


  ];
  final List<int> priceList =[
    200,
    400,
    500,
    600, 200,400,500,600,200,300
  ];
  @override
  Widget build(BuildContext context) {
    return  new StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                margin:EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.asset(
                    imageList[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text('$priceList[index]'),
            FavoriteButton(
              isFavorite: true,
              // iconDisabledColor: Colors.white,
              valueChanged: (_isFavorite) {
                print('Is Favorite : $_isFavorite');
              },
            ),
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