import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      // controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child:  TextFormField(
                      obscureText: true,
                      // controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Forgot password'),
                  const SizedBox(height: 20),
                  Container(
                      width: 300,
                      height: 50,
                      // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Color(0xffc29592)),
                        onPressed: () {
                          // print(nameController.text);
                          // print(passwordController.text);
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
                          //signup screen
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
