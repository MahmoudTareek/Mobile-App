import 'package:flutter/material.dart';

import 'home_page.dart';
class signup extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF394a59),
          title: Center(
            child: Text('Join'),
          ),
        ),
        backgroundColor: Color(0xfff4f3f6),
        body: SafeArea(
          child: SingleChildScrollView(
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
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  // controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              SizedBox(height: 20,),
          Container(
          
          ),
          SizedBox(height:20 ),
                        Container(
                          width: 300,
                height: 50,
                // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
                child: ElevatedButton(
                  child: const Text('Sign up'),
                  style: ElevatedButton.styleFrom(primary:Color(0xffc29592) ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                )
                ),
              SizedBox(height:20 ),
           
                Container(
                   width: 300,
                height: 50,
                  child: ElevatedButton.icon(
  onPressed: (){

  }, 
  icon: Icon(Icons.facebook), 
  label: Text("Facebook"),
 

),
                )

,
SizedBox(height:20 ),
        Container(
                          width: 300,
                height: 50,
                // padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0),
                child: ElevatedButton(
                  child: const Text('Google'),
                  style: ElevatedButton.styleFrom(primary:Color(0x000000) ),
                  onPressed: () {
                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
