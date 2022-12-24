import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'model/signup_model.dart';

SignUpModel? usermodel;

void createUser ({
  required String email,
  required String password,
  required String username,
  required String uid,
}) async {
  final docUser = FirebaseFirestore.instance
                            .collection('users')
                            .doc();
                            final model = SignUpModel(
                              name: username,
                              email: email,
                              password: password,
                              uId: uid,
                            );
                            final json = model.toJson();
                            await docUser.set(json);
}

// readInfo()
// {
//   final user = FirebaseAuth.instance.currentUser;
//   // return FirebaseFirestore.instance.collection('users').snapshots().map(
//   //   (snapshot) =>
//   //   snapshot.docs.map((doc) => SignUpModel.fromJson(doc.data())).toList() 
//   //   );
//   print(user!.uid.toString());
//   return FirebaseFirestore.instance.collection('users').doc(user!.uid.toString()).get().then((value) {
//       usermodel = SignUpModel.fromJson(value.data()!);
//   // return user!.email;
// }); 
// }