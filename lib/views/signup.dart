import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/services/auth.dart';

import 'package:project/services/google_auth.dart';
import 'package:project/views/navbar.dart';
import 'home_page.dart';
import '../services/user_service.dart';
import '../model/signup_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:project/services/google_auth.dart';

import 'package:project/views/home_page.dart';

class signup extends StatelessWidget {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();
  var at = "@";
  var com = ".com";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(199, 197, 211, 1),
          title: Center(
            child: Text('Join'),
          ),
        ),
        backgroundColor: Color(0xfff4f3f6),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (value.contains(at) && value.contains(com)) {
                          return null;
                        }
                        return 'You have entered an invalid email address';
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Your password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      controller: confirmpasswordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your confirm password';
                        }
                        if (confirmpasswordController.text !=
                            passwordController.text) {
                          return 'Your confirm password is not match with password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(

                  // // insert text here
                  // child: Text(
                  //   'Or continue with Google or Facebook',
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 12,
                  //   ),

                  // ),
                  // ),
                  SizedBox(height: 20),
                  Container(
                      width: 300,
                      height: 50,
                      // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
                      child: ElevatedButton(
                        child: const Text('Sign up'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(199, 197, 211, 1),
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          elevation: 10,
                          side: const BorderSide(
                              color: Color.fromARGB(255, 187, 185, 197),
                              width: 2),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: confirmpasswordController.text,
                            )
                                .then((value) {
                              createUser(
                                email: emailController.text,
                                password: passwordController.text,
                                username: usernameController.text,
                                uid: value.user!.uid,
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Navbar()),
                              );
                            }).catchError((error) {
                              Fluttertoast.showToast(
                                  msg: error.toString(),
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 5,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            });
                          }
                        },
                      )),
                  SizedBox(height: 20),

                  //       Container(
                  //          width: 300,
                  //       height: 50,
                  //         child: ElevatedButton.icon(
                  //   onPressed: (){

                  //   },
                  //   icon: Icon(Icons.facebook),
                  //   label: Text("Facebook"),

                  // ),
                  //       )

                  // ,
                  // SizedBox(height:20 ),
                  //         Container(

                  //                 width: 300,
                  //       height: 50,

                  //       // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
                  //       child: ElevatedButton(

                  //         child: const Text('Google'),
                  //         style: ElevatedButton.styleFrom(primary:Color(0x000000) ),

                  //         onPressed: ()  {
                  //           //print hello

                  //         AuthService().signingoogle();

                  //         },

                  //       )

                  //       ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
