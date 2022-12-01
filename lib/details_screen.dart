import 'package:flutter/material.dart';
import 'package:project/view_profile.dart';
import '../details_data.dart';
import 'map.dart';

class DetailsScreen extends StatefulWidget {
  // const DetailsScreen({super.key});
  static const IconData starHalf =
      IconData(0xe5fc, fontFamily: 'MaterialIcons', matchTextDirection: true);

  const DetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final data = DetailsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 13, right: 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Search',
                        style:
                            TextStyle(fontSize: 18, fontFamily: 'Roboto Mono'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 170),
                      child: Icon(Icons.search, size: 20),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewProfile()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/gettyimages-1191607545-612x612.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ),

              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, left: 10),
                    child: Text(
                      data.title,
                      style: const TextStyle(
                          fontSize: 28, fontFamily: 'Roboto Mono'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 280,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfff4f3f6)),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MapScreen()),
                              );
                            },
                            child: Container(
                              height: 150,
                              width: 380,
                              // ignore: sort_child_properties_last
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 150, top: 10),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/Moez.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 160),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 4),
                                    child: Icon(
                                      DetailsScreen.starHalf,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    data.rating.toString(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto Mono'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                    data.genre,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto Mono'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 3),
                                    child: Icon(
                                      Icons.forward,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    data.distance.toString(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto Mono'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 4),
                                    child: Icon(
                                      Icons.access_time,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    data.open,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto Mono'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 370,
                      // ignore: prefer_const_constructors
                      child: Text(
                        'Duration',
                        style:
                            TextStyle(fontSize: 23, fontFamily: 'Roboto Mono'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 373,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xfff4f3f6)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 18),
                          child: Icon(
                            Icons.directions_car,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 18),
                          child: Text(data.timeByCar.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: 'Roboto Mono')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 150, top: 18),
                          child: Icon(
                            Icons.directions_bus,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180, top: 18),
                          child: Text(data.timeByCar.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: 'Roboto Mono')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 300, top: 18),
                          child: Icon(
                            Icons.directions_run,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 330, top: 18),
                          child: Text(data.timeByCar.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: 'Roboto Mono')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 370,
                      child: Text(
                        'Similar Nearby',
                        style:
                            TextStyle(fontSize: 23, fontFamily: 'Roboto Mono'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(data.imageUrl[index]),
                          fit: BoxFit.cover,
                        ),
                        color: const Color(0xfff4f3f6),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
