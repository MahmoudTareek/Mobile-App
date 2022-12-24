import 'dart:convert';

List<SignUpModel> SignUpModelFromJson(String str) => List<SignUpModel>.from(json.decode(str).map((x) => SignUpModel.fromJson(x)));

String SignUpModelToJson(List<SignUpModel> data ) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SignUpModel
{
  String name;
  String email;
  String password;
  String uId;

  SignUpModel({
    required this.name,
    required this.email,
    required this.password,
    required this.uId,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
    name : json['name'],
    email : json['email'],
    password : json['password'],
    uId : json['uId'],
  );

  Map<String, dynamic> toJson() => 
  {
      "name":name,
      "email":email,
      "password":password,
      "uId":uId,
    };
  }

