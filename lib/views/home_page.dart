import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/views/plan.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      appBar: AppBar(actions: [IconButton(
        onPressed: signout,
        
       icon: Icon(Icons.logout))],),
      body: SafeArea(
        child: Stack(
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
            ListView(
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "YOU RECENTLY WATCHED",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFb89cbb),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: CarouselSlider(
                      options: CarouselOptions(height: 250, autoPlay: false),
                      items: [
                        MyImageView("assets/images/NYC.jpg"),
                        MyImageView("assets/images/city.jpg"),
                        MyImageView("assets/images/city2.jpg"),
                        // MyImageView("assets/images/NYC.jpg"),
                        // MyImageView("assets/images/NYC.jpg"),
                        // MyImageView("assets/images/NYC.jpg"),
                      ]),
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
  GoogleSignIn().signOut();

  }
}



class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);


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
      child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      // elevation: 10.0,
      margin: const EdgeInsets.all(17),
      child: Stack(
        // mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFFEBECF0),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("description",
               textAlign: TextAlign.center,
               ),
            ),
          ),
        ],
      ),
    ),
    );
    //   child: Image.asset(imgPath,),
  }
}
