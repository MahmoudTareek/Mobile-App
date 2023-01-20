import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/views/view_profile.dart';
import 'package:project/views/components.dart';
import '../model/details_data.dart';
import '../views/map.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class DetailsScreen extends StatefulWidget {
  static const IconData starHalf =
      IconData(0xe5fc, fontFamily: 'MaterialIcons', matchTextDirection: true);

  final Map detailData;
  final Map detailAddress;
  DetailsScreen(
      {Key? key, required this.detailData, required this.detailAddress})
      : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final data = DetailsData();

  final aPIkey = 'AIzaSyDFoM-XyXDsa3PzoGkY2a94fyW5LLMA6LQ';

  bool isFavorite = true;

  void _changeStarAndText() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: maincolor,
        title: const Text("Go Tour"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          // child: Column(
          //   children: [
          child: Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: "Search",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide.none),
                                  fillColor: const Color(0xffe6e6ec),
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ViewProfile()),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 5),
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
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 7, left: 10),
                          child: Text(
                            widget.detailData['name'].toString(),
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
                              height: 260,
                              width: 340,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: detailsBackground),
                            ),
                            Column(
                              children: [
                                // GestureDetector(
                                //   onTap: () {
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               const MapScreen()),
                                //     );
                                //   },
                                SizedBox(
                                  height: 150,
                                  width: 340,
                                  // ignore: sort_child_properties_last
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, bottom: 150, top: 10),
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  // isFavorite = !isFavorite;
                                                  if (isFavorite == true) {
                                                    isFavorite = false;
                                                  } else {
                                                    isFavorite = true;
                                                  }
                                                });
                                              },
                                              icon: Icon(
                                                isFavorite
                                                    ? Icons.star
                                                    : Icons.star_border,
                                                size: 35,
                                              ))),
                                    ],
                                  ),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.circular(20),
                                  //   image: DecorationImage(
                                  //     image: NetworkImage(widget
                                  //                     .detailData['photos'][0]
                                  //                 ['photo_reference'] !=
                                  //             null
                                  //         ? 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${widget.detailData['photos'][0]['photo_reference']}&key=$aPIkey'
                                  //         : 'https://pic.onlinewebfonts.com/svg/img_546302.png'),
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  // ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, top: 160),
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
                                            Icons.star,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 251, 227, 14),
                                          ),
                                        ),
                                        Text(
                                          widget.detailData['rating']
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Roboto Mono'),
                                        ),
                                        // child: RatingStars(
                                        //   value:
                                        //       detailData['rating'] != null
                                        //           ? detailData['rating']
                                        //           : 0,
                                        //   starCount: 5,
                                        //   starSize: 7,
                                        //   valueLabelColor:
                                        //       Color(0xff9b9b9b),
                                        //   valueLabelTextStyle: TextStyle(
                                        //       color: Colors.white,
                                        //       fontFamily: 'WorkSans',
                                        //       fontWeight: FontWeight.w400,
                                        //       fontStyle: FontStyle.normal,
                                        //       fontSize: 9.0),
                                        //   valueLabelRadius: 7,
                                        //   maxValue: 5,
                                        //   starSpacing: 2,
                                        //   maxValueVisibility: false,
                                        //   valueLabelVisibility: true,
                                        //   animationDuration:
                                        //       Duration(milliseconds: 1000),
                                        //   valueLabelPadding:
                                        //       EdgeInsets.symmetric(
                                        //           vertical: 1,
                                        //           horizontal: 4),
                                        //   valueLabelMargin:
                                        //       EdgeInsets.only(right: 4),
                                        //   starOffColor: Color(0xffe7e8ea),
                                        //   starColor: Colors.yellow,
                                        // )
                                        //------------------------------------------------------------
                                        //  child: RatingBar.builder() {
                                        //   initialRating: detailData['rating'] != null
                                        //         ? detailData['rating']
                                        //         : 0;
                                        //     minRating: 1;
                                        //     direction: Axis.horizontal;
                                        //     allowHalfRating: true;
                                        //     itemCount: 5;
                                        //     itemPadding: EdgeInsets.symmetric(horizontal: 4.0);
                                        //     itemBuilder: (context, _) => Icon(
                                        //       Icons.star,
                                        //       color: Colors.amber,
                                        //     );
                                        //     onRatingUpdate: (rating) {
                                        //       print(rating);
                                        //     };}
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
                                          // data.open,
                                          widget.detailData['business_status']
                                              .toString(),
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
                            width: 340,
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Duration',
                              style: TextStyle(
                                  fontSize: 23, fontFamily: 'Roboto Mono'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: detailsBackground),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.directions_car,
                            size: 20,
                          ),
                          Text(data.timeByCar.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: 'Roboto Mono')),
                          const Icon(
                            Icons.directions_bus,
                            size: 20,
                          ),
                          Text(data.timeByCar.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: 'Roboto Mono')),
                          const Icon(
                            Icons.directions_run,
                            size: 20,
                          ),
                          Text(data.timeByCar.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontFamily: 'Roboto Mono')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // ignore: prefer_const_literals_to_create_immutables

                          SizedBox(
                            height: 30,
                            width: 340,
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Share address',
                              style: TextStyle(
                                  fontSize: 23, fontFamily: 'Roboto Mono'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: detailsBackground),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          widget.detailAddress['formatted_address'].toString(),
                          style: const TextStyle(
                              fontSize: 18, fontFamily: 'Roboto Mono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     children: [
          // Container(
          //   margin: const EdgeInsets.symmetric(
          //       horizontal: 10, vertical: 20),
          //   height: 300,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     // ignore: prefer_const_constructors
          //     image: DecorationImage(
          //       image: const AssetImage(
          //           'assets/images/gettyimages-1191607545-612x612.jpg'),
          //       fit: BoxFit.cover,
          //     ),
          //     color: detailsBackground,
          //   ),
          // )
          // Container(
          //   height: 200,
          //   width: 200,
          //   color: Colors.pink,
          // ),
          // const SizedBox(
          //   height: 200,
          //   width: 50,
          // ),
          // Container(
          //   height: 200,
          //   width: 200,
          //   color: Colors.pink,
          // ),
          // const SizedBox(
          //   height: 200,
          //   width: 50,
          // ),
          // Container(
          //   height: 200,
          //   width: 200,
          //   color: Colors.pink,
          // ),
          // const SizedBox(
          //   height: 200,
          //   width: 50,
          // ),
          //],
          //),
          //),
          //   ],
          // ),
        ),
      ),
    );
  }
}
