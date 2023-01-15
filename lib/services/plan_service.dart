import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:project/model/activity.dart';
import 'package:flutter/foundation.dart';

class PlanService {
  final String host = "travel-advisor.p.rapidapi.com";
  final String apiKey = "5ff4ce52e3msh9ca1467ec4f5789p14b878jsndd3447cabc4b";
}


// Future<dynamic> get({
//     required String endpoint,
//     required Map<String, String> query,
//   }) async {
//     Uri uri = Uri.https(_baseUrl, endpoint, query);
//     final response = await http.get(uri, headers: _headers);
//     if (response.statusCode == 200) {
//       // If server returns an OK response, parse the JSON.
//       return json.decode(response.body);
//     } else {
//       // If that response was not OK, throw an error.
//       throw Exception('Failed to load json data');
//     }
//   }
// }


