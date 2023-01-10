import 'package:flutter/material.dart';
import 'package:project/views/components.dart';

class FavoritesModel {
  late final String image;
  late final String place;
  late final String body;
  late bool isfavorites;
  late final Color favorites;

  FavoritesModel({
    required this.image,
    required this.place,
    required this.body,
    required this.isfavorites,
    required this.favorites,
  });
}

List<FavoritesModel> favorites = [
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 1 Name',
    body: 'Place 1 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 2 Name',
    body: 'Place 2 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 3 Name',
    body: 'Place 3 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 1 Name',
    body: 'Place 1 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 2 Name',
    body: 'Place 2 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 3 Name',
    body: 'Place 3 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 1 Name',
    body: 'Place 1 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 2 Name',
    body: 'Place 2 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
  FavoritesModel(
    image: 'assets/images/PYRAMIDS.jpg',
    place: 'Place 3 Name',
    body: 'Place 3 Description',
    isfavorites: true,
    favorites: favoritesColor,
  ),
];
