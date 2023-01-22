import 'package:flutter/material.dart';
import 'admin_screen.dart';
import 'edit_profile.dart';
import '../services/user_service.dart';
import 'favorites_screen.dart';
import '../model/view_profile_data.dart';
import '../model/signup_model.dart';
import 'custom_clipper.dart';
import 'package:project/views/components.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
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
                  color: detailsBackground,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
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
                        color: detailsBackground),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 7),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 7),
                        child: FutureBuilder<SignUpModel?>(
                          future: readInfo(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data!.name,
                                style: const TextStyle(
                                    fontSize: 18, fontFamily: 'Roboto Mono'),
                              );
                            } else {
                              return const Text('Loading...');
                            }
                          },
                        ),
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
                        color: detailsBackground),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 7),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 7),
                        child: FutureBuilder<SignUpModel?>(
                          future: readInfo(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(
                                snapshot.data!.email,
                                style: const TextStyle(
                                    fontSize: 18, fontFamily: 'Roboto Mono'),
                              );
                            } else {
                              return const Text('Loading...');
                            }
                          },
                        ),
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
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoritesScreen()),
                      ),
                    },
                    // ignore: sort_child_properties_last
                    child: const Text("Go to Favorites",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: detailsBackground,
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
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfile()),
                      ),
                    },
                    // ignore: sort_child_properties_last
                    child: const Text("Change Password",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: detailsBackground,
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
              padding: const EdgeInsets.only(right: 147),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminScreen()),
                      ),
                    },
                    // ignore: sort_child_properties_last
                    child: FutureBuilder<SignUpModel?>(
                      future: readInfo(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // ignore: unrelated_type_equality_checks
                          if (snapshot.data! == "admin") {
                            // ignore: prefer_const_constructors
                            return Text("Users",
                                // ignore: dead_code
                                style: const TextStyle(color: Colors.black));
                            // ignore: dead_code
                            ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: detailsBackground,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            );
                          }
                          return const Text("Admin",
                              // ignore: dead_code
                              style: TextStyle(color: Colors.black));
                        } else {
                          return const Text('Loading...');
                        }
                      },
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
