import 'package:avatar_glow/avatar_glow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:project/views/plan.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // signout button
      appBar: AppBar(
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  // color: Colors.deepOrange.shade50,
                  padding: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(0.2), BlendMode.modulate),
                      image: AssetImage("assets/images/globe.jpg"),
                    ),
                  ),
                ),
                Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 50),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Go Tour",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 40, color: Color(0XFFc7c4d3)))),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Basma",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Color(0xFF3e536e)))),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Where are you going?",
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 50, color: Color(0xFF3e536e))),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 51,
                        // color: Colors.amber,

                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: "Search",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide.none),
                                  fillColor: Color(0xffe6e6ec),
                                  filled: true,
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffe6e6ec),
                                borderRadius: BorderRadius.circular(9.0),
                              ),
                              child: Icon(Icons.tune),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "YOU RECENTLY WATCHED",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //       fontSize: 16,
                    //       color: Color(0xFFb89cbb),
                    //       fontWeight: FontWeight.bold),
                    // ),
                    const SizedBox(
                      height: 5,
                    ),

                    CarouselSlider(
                        options: CarouselOptions(
                          height: 300,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                        ),
                        items: [
                          MyImageView(
                              "assets/images/sea2.jpg", "Explore the World"),
                          MyImageView("assets/images/acity.jpg",
                              "Visit the most beautiful cities"),
                          MyImageView("assets/images/skiing.jpg",
                              "Find the best activities"),
                          MyImageView("assets/images/arch.jpg",
                              "Save your favorite Places"),
                        ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void signout() {
    FirebaseAuth.instance.signOut();
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;
  String title;

  MyImageView(this.imgPath, this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlanScreen()),
        );
      },
      // child: Card(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(25.0),
      //   ),
      //   // elevation: 10.0,
      //   margin: const EdgeInsets.all(6.0),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                ],
              ),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF9f9da9),
                    Colors.transparent,
                    Colors.transparent,
                    Color(0xFF9f9da9),
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [0, 0, 0.6, 1],
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  title,
                  style: GoogleFonts.oswald(
                      textStyle:
                          const TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),

      // ),
    );
    //   child: Image.asset(imgPath,),
  }
}
