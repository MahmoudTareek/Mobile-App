import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_data.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _user = User();
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(30.1685, 31.4920),
    zoom: 18,
  );

  late GoogleMapController _googleMapController;
  Marker? _origin;
  Marker? _destination;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: const Color(0xFF394a59),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: true,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) => _googleMapController = controller,
            markers: {
              if (_origin != null) _origin!,
              if (_destination != null) _destination!
            },
            onLongPress: _addMarker,
          ),
          DraggableScrollableSheet(
            minChildSize: 0.07,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const BarIndicator(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Container(
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                color: const Color(0xFFEBECF0),
                              ),
                              width: 390,
                              height: 200,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/coffee shop.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _user.list_place[0],
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rate_rounded,
                                                size: 30,
                                                color: Color(0xFFffc13b)),
                                            Text(
                                              _user.list_rating[0].toString(),
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xFFffc13b)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          width: 200,
                                          padding:
                                              new EdgeInsets.only(right: 13.0),
                                          child: Text(
                                            "3287 County Rd #16, Podro, OH, 45659 ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Positioned(
                            //   left: 175,
                            //   top: 35,
                            // child: RichText(
                            //   text: TextSpan(
                            //     children: [
                            //       const WidgetSpan(
                            //         child: Icon(Icons.star_rate_rounded,
                            //             size: 30, color: Color(0xFFffc13b)),
                            //       ),
                            //       TextSpan(
                            //         text: _user.list_rating[0].toString(),
                            //         // ignore: prefer_const_constructors
                            //         style: TextStyle(
                            //             fontSize: 20,
                            //             color: const Color(0xFFffc13b)),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            // ),
                          ],
                        ),
                      ),

                      //second container
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Container(
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                color: const Color(0xFFEBECF0),
                              ),
                              width: 390,
                              height: 200,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/gas station.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _user.list_place[1],
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rate_rounded,
                                                size: 30,
                                                color: Color(0xFFffc13b)),
                                            Text(
                                              _user.list_rating[1].toString(),
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xFFffc13b)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          width: 200,
                                          padding:
                                              new EdgeInsets.only(right: 13.0),
                                          child: Text(
                                            "3287 County Rd #16, Podro, OH, 45659 ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //third container
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Container(
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                color: const Color(0xFFEBECF0),
                              ),
                              width: 390,
                              height: 200,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: const DecorationImage(
                                            image:
                                                AssetImage('assets/images/museum.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // ignore: prefer_const_constructors
                                  // third container
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _user.list_place[2],
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rate_rounded,
                                                size: 30,
                                                color: Color(0xFFffc13b)),
                                            Text(
                                              _user.list_rating[2].toString(),
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xFFffc13b)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          width: 200,
                                          padding:
                                              new EdgeInsets.only(right: 13.0),
                                          child: Text(
                                            "3287 County Rd #16, Podro, OH, 45659 ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //forth container
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Container(
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                color: const Color(0xFFEBECF0),
                              ),
                              width: 390,
                              height: 200,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/restaurant.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // ignore: prefer_const_constructors
                                  // fourth container
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _user.list_place[3],
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star_rate_rounded,
                                                size: 30,
                                                color: Color(0xFFffc13b)),
                                            Text(
                                              _user.list_rating[3].toString(),
                                              // ignore: prefer_const_constructors
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xFFffc13b)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          width: 200,
                                          padding:
                                              new EdgeInsets.only(right: 13.0),
                                          child: Text(
                                            "3287 County Rd #16, Podro, OH, 45659 ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Theme.of(context).primaryColor,
        //   foregroundColor: Colors.black,
        //   onPressed: () => _googleMapController.animateCamera(
        //       CameraUpdate.newCameraPosition(_initialCameraPosition)),
        //   child: const Icon(Icons.center_focus_strong),
        // ),
      ),
    );
  }

  void _addMarker(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      setState(() {
        _origin = Marker(
            markerId: const MarkerId('origin'),
            infoWindow: const InfoWindow(title: 'Origin'),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen),
            position: pos);
      });
    } else {
      setState(() {
        _destination = Marker(
            markerId: const MarkerId('destination'),
            infoWindow: const InfoWindow(title: 'Destination'),
            icon:
                BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
            position: pos);
      });
    }
  }
}

class BarIndicator extends StatelessWidget {
  const BarIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 40,
        height: 3,
        decoration: const BoxDecoration(
          color: Color(0xFFc8d7de),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}