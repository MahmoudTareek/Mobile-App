//import firebase 

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{



signingoogle() async{
//print hello 
  
 //get info
   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  
  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

//get credentials
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  //reyurn 
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

  // void signInWithGoogle() {}


}