import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'model/signup_model.dart';

SignUpModel? usermodel;

void createUser({
  required String email,
  required String password,
  required String username,
  required String uid,
}) async {
  final docUser = FirebaseFirestore.instance.collection('users');
  final model = SignUpModel(
    name: username,
    email: email,
    password: password,
    uId: uid,
  );
  final json = model.toJson();
  await docUser.doc(uid).set(json);
}

Future<SignUpModel?> readInfo() async {
  final user = FirebaseAuth.instance.currentUser;
  final doc = await FirebaseFirestore.instance
      .collection('users')
      .doc(user!.uid.toString())
      .get();
  return SignUpModel.fromJson(doc.data()!);
}
