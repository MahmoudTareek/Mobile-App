import 'package:flutter/material.dart';
import 'package:project/views/components.dart';
import 'package:project/model/favorites_model.dart';
import '../model/favourites_model.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../services/user_service.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
      ),
      // body: ConditionalBuilder(
      //   condition: favorites.isNotEmpty,
      //   builder: (context) => ListView.separated(
      //     itemBuilder: (context, index) => buildFavoriteItem(favorites[index]),
      //     separatorBuilder: (context, index) => Padding(
      //       padding: const EdgeInsetsDirectional.only(
      //         start: 20.0,
      //         end: 20.0,
      //       ),
      //       child: Container(
      //         width: double.infinity,
      //         height: 1.0,
      //         color: Colors.grey[300],
      //       ),
      //     ),
      //     itemCount: favorites.length,
      //   ),
      //   fallback: (context) => Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       // ignore: prefer_const_literals_to_create_immutables
      //       children: [
      //         const Icon(
      //           Icons.not_interested,
      //           color: Colors.red,
      //           size: 120.0,
      //         ),
      //         const Text(
      //           'No Favorites',
      //           style: TextStyle(
      //             fontSize: 30.0,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.red,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      body: FutureBuilder(
        future: retriveDataByEmail(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final favorites = snapshot.data as List;
            return ConditionalBuilder(
              condition: favorites.isNotEmpty,
              builder: (context) => ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  final model = favorites[index];
                  return buildFavoriteItem(model);
                },
              ),
              fallback: (context) => const Center(
                child: Text(
                  'No Favorites Yet',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget buildFavoriteItem(model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        // model.image,
                        'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${model['image']}&key=$aPIkey',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              model['name'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              model['location'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          // const Spacer(),
                          // // IconButton(
                          // //   onPressed: () {
                          // //     setState(() {
                          // //       model.isfavorites = !model.isfavorites;
                          // //       favorites.removeWhere(
                          // //           (model) => model.isfavorites == false);
                          // //     });
                          // //   },
                          //   icon: CircleAvatar(
                          //     radius: 15.0,
                          //     backgroundColor: model.isfavorites
                          //         ? model.favorites
                          //         : maincolor,
                          //     child: const Icon(
                          //       Icons.favorite_border,
                          //       size: 20.0,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
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
