import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/views/home_page.dart';
import 'package:project/views/signup.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatelessWidget {
  login({super.key});

//controllers for login
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var at = "@";
  var com = ".com";

//sign in method
  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffc7c5d3),
          // ignore: prefer_const_constructors
          title: Center(
            child: const Text('Sign in'),
          ),
        ),
        backgroundColor: const Color(0xfffcebe3),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (value.contains(at) && value.contains(com)) {
                          return null;
                        }
                        return 'You have entered an invalid email address';
                      },
                      controller: emailController,
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      // controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
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
                  const SizedBox(
                    height: 20,
                  ),
                   Container (child: Text(
                        'Or continue with Google or Facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      
                      ),
                      ),

                  // const Text('Forgot password'),
                  const SizedBox(height: 20),
                  Container(
                      width: 300,
                      height: 50,
                      // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffc29592)),

                        onPressed: () {
                          signIn();
                        },

                    
                        child: const Text('Login'),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Does not have account?'),
                      TextButton(
                        child: const Text(
                          'Sign Up',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffc29592)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
