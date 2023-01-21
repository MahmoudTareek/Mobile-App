import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

late Database database;

void createDatabase() {
  openDatabase('favourite.db', version: 1, onCreate: (database, version) {
    print('Database created');
    database
        .execute(
            'CREATE TABLE favourites (name TEXT, location TEXT, rating TEXT, image TEXT)')
        .then((value) {
      print('Table created');
    }).catchError((Error) {
      print('Error while creating the table ${Error.toString()}');
    });
  }, onOpen: (database) {
    print('Database opened');
  }).then((value) {
    database = value;
  });
}

insertToDatabase({
  required String name,
  required String location,
  required String rating,
  required String image,
}) async {
  await database.transaction((txn) async {
    txn
        .rawInsert(
      'INSERT INTO favourites(name, location, rating, image) VALUES ("$name","$location","$rating","$image")',
    )
        .then((value) {
      print('$value Inserted Successfully');
    }).catchError((Error) {
      print('Error while Inserting in the table ${Error.toString()}');
    });

    return null;
  });
}


Future<List<Map<String, dynamic>>> retriveData() async {
  return await database.rawQuery('SELECT * FROM favourites');
}
