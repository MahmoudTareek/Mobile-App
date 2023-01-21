import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:project/views/components.dart';
import 'package:project/views/map.dart';
import 'package:project/views/map.dart';

import '../services/plan_service.dart';
import 'components.dart';
import 'details_screen.dart';

class PlanScreen extends StatefulWidget {
  @override
  PlanScreenState createState() => PlanScreenState();
}

class PlanScreenState extends State<PlanScreen> {
  // List _locations = [];
  final _controller = TextEditingController();
  var _latitude = '12.235588';
  var _longitude = '109.19553';

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getAllCategories(_latitude, _longitude);
  }

  List locations = [];
  Future getAllCategories(String _latitude, String _longitude) async {
    // double latitude = double.parse(_latitude);
    // double longitude = double.parse(_longitude);

    //Reem's IP
    var url =
        "http://192.168.0.4/mobile/Untitled-1.php?latitude=$_latitude&longitude=$_longitude";

    //Basma's IP
    // var url =
    //     "http://192.168.100.8/mobile/Untitled-1.php?latitude=$_latitude&longitude=$_longitude";

    // var requestBody =
    //     json.encode({'latitude': _latitude, 'longitude': _longitude});
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Fluttertoast.showToast(
        msg: 'loading',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      setState(() {
        _isLoading = false;
        locations = List.from(json.decode(response.body)['data']);
      });
      return locations;
    } else {
      Fluttertoast.showToast(
        msg: (response.statusCode).toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan'),
        backgroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () async {
                          final cityName = _controller.text;
                          final response = await http.get(Uri.parse(
                              'https://nominatim.openstreetmap.org/search?q=$cityName&format=json'));
                          if (response.statusCode == 200) {
                            final data = json.decode(response.body);
                            _latitude = data[0]['lat'];
                            _longitude = data[0]['lon'];
                            getAllCategories(_latitude, _longitude);
                          }
                          // Fluttertoast.showToast(
                          //   msg: _latitude,
                          //   toastLength: Toast.LENGTH_SHORT,
                          //   gravity: ToastGravity.BOTTOM,
                          //   timeInSecForIosWeb: 1,
                          //   backgroundColor: Colors.green,
                          //   textColor: Colors.white,
                          //   fontSize: 16.0,
                          // );
                        },
                      ),
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      fillColor: const Color(0xffe6e6ec),
                      filled: true,
                    ),
                  ),
                ),

                const SizedBox(width: 15),
                // Text("Trending Activities", style: TextStyle(fontSize: 30, color: Color(0xFFb89cb4)),),
                const SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffe6e6ec),
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  child: const Icon(Icons.tune),
                ),
              ],
            ),
            const SizedBox(height: 15),
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemCount: locations.length,
                          itemBuilder: (BuildContext context, int index) {
                            // if(locations[index].containsKey('photo') && locations[index]['photo'] is Map) {
                            return Card(
                              child: Row(children: [
                                SizedBox(
                                  width: 175,
                                  height: 140,
                                  // color: Colors.amber,

                                  child: locations != null &&
                                          locations[index]['photo'] != null &&
                                          locations[index]['photo']['images'] !=
                                              null
                                      ? Image.network(locations[index]['photo']
                                          ['images']['large']['url'])
                                      : Image.asset('assets/images/no_img.png'),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  width: 175,
                                  height: 150,
                                  // color: Colors.red,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(locations[index]['name'] ?? "",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Roboto Mono')),
                                      locations != null &&
                                              locations[index]['rating'] != null
                                          ? RatingBar.builder(
                                              itemSize: 25,
                                              initialRating: double.parse(
                                                  locations[index]['rating']),
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            )
                                          : const Text('No Rating'),
                                    ],
                                  ),
                                ),
                              ]),
                            );
                          }),
                    ),
                  ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapScreen()),
                );
              },
              child: const Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
