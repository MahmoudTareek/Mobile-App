import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffc7c5d3),
          title: Center(
            child: Text('Sign in'),
          ),
        ),
        backgroundColor: Color(0xfffcebe3),
        body: SafeArea(
          child: Column(
            children: [
          SizedBox(height: 50,),
                      Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                // controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),

                      Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                // controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
SizedBox(height: 20,),
Container(
  child: Text('Forgot password'
  )
  
),
SizedBox(height:20 ),
                      Container(
                        width: 300,
              height: 50,
              // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(primary:Color(0xffc29592) ),
                onPressed: () {
                  // print(nameController.text);
                  // print(passwordController.text);
                },
              ))
            ],
              Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            
          ),
         





        ),
      ),
    );
  }
}
