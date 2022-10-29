import 'package:flutter/material.dart';
import 'package:project/components.dart';
import 'package:project/favorites_model.dart';

class FavoritesScreen extends StatefulWidget

{
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();

}

class _FavoritesScreenState extends State<FavoritesScreen> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildFavoriteItem(favorites[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: favorites.length,
      ),
  );
  }

Widget buildFavoriteItem(FavoritesModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
    [
      SizedBox(
                height: 20.0,
              ),
      Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 100.0,
            width: 120.0,
            child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: 
            [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  '${model.image}',
                  ),
              ),
              ],
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.place}',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                    children: [
                      Text(
                        '${model.body}',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                  Spacer(),
                  IconButton(
                  onPressed: (){
                    setState(() {
                      model.isfavorites = !model.isfavorites;
                    });
                  },
                   icon: CircleAvatar(
                    radius: 15.0,
                    backgroundColor: model.isfavorites? model.favorites : maincolor,
                    child: Icon(
                      Icons.favorite_border,
                      size: 20.0,
                      color: Colors.white,
                    ),
                   ),
                   ),
                  ],
                ),
                ],
              ),
            ),
          ),
        ],
    ),
    ],
  );
}
