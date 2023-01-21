import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/signup_model.dart';

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
    image:
        'https://qph.cf2.quoracdn.net/main-qimg-2b21b9dd05c757fe30231fac65b504dd',
    role: 'user',
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

Stream<List<SignUpModel>> readAllUsers() {
  return FirebaseFirestore.instance.collection('users').snapshots().map(
      (snapshot) => snapshot.docs
          .map((doc) => SignUpModel.fromJson(doc.data()))
          .toList());
}

Future<void> deleteUser(String uid) async {
  await FirebaseFirestore.instance.collection('users').doc(uid).delete();
}

Future<void> changeRole(String uid) async {
  final doc =
      await FirebaseFirestore.instance.collection('users').doc(uid).get();
  await FirebaseFirestore.instance.collection('users').doc(uid).update({
    'role': doc['role'] == 'user' ? 'admin' : 'user',
  });
}

Future<SignUpModel?> getRole() async {
  final user = FirebaseAuth.instance.currentUser;
  final doc = await FirebaseFirestore.instance
      .collection('users')
      .doc(user!.uid.toString())
      .get();
  return SignUpModel.fromJson(doc['role']!);
}
