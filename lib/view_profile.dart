import 'package:flutter/material.dart';
import 'package:project/model/view_profile_data.dart';
import 'custom_clipper.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    final data = ViewProfileData();

    return Scaffold(
        body: SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: <Widget>[
              Container(),
              ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  height: 250,
                  color: const Color(0xfff4f3f6),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/gettyimages-1191607545-612x612.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                const SizedBox(
                  height: 40,
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, top: 7),
                    child: Text(
                      'Full name:  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Roboto Mono'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    height: 40,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xfff4f3f6)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 7),
                      child: Text(
                        data.fullName,
                        style: const TextStyle(
                            fontSize: 18, fontFamily: 'Roboto Mono'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                const SizedBox(
                  height: 40,
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, top: 7),
                    child: Text(
                      'Email:  ',
                      style: TextStyle(fontSize: 18, fontFamily: 'Roboto Mono'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    height: 40,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xfff4f3f6)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 7),
                      child: Text(
                        data.email,
                        style: const TextStyle(
                            fontSize: 18, fontFamily: 'Roboto Mono'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Padding(
              padding: const EdgeInsets.only(right: 147),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    // ignore: sort_child_properties_last
                    child: const Text("Go to Favorites",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color(0xfff4f3f6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Padding(
              padding: const EdgeInsets.only(right: 135),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    // ignore: sort_child_properties_last
                    child: const Text("Change Password",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color(0xfff4f3f6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
