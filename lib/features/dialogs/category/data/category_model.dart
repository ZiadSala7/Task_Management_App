import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final Color color;

  CategoryModel({required this.name, required this.icon, required this.color});
}

List<CategoryModel> categories = [
  CategoryModel(
    name: 'Grocery',
    icon: Icons.local_grocery_store,
    color: Colors.greenAccent.shade400,
  ),
  CategoryModel(
    name: 'Work',
    icon: Icons.work,
    color: Colors.redAccent.shade200,
  ),
  CategoryModel(
    name: 'Sport',
    icon: Icons.fitness_center,
    color: Colors.cyanAccent.shade400,
  ),
  CategoryModel(
    name: 'Design',
    icon: Icons.videogame_asset,
    color: Colors.tealAccent.shade400,
  ),
  CategoryModel(
    name: 'University',
    icon: Icons.school,
    color: Colors.blueAccent.shade400,
  ),
  CategoryModel(
    name: 'Social',
    icon: Icons.campaign,
    color: Colors.pinkAccent.shade200,
  ),
  CategoryModel(
    name: 'Music',
    icon: Icons.music_note,
    color: Colors.purpleAccent.shade200,
  ),
  CategoryModel(
    name: 'Health',
    icon: Icons.favorite,
    color: Colors.greenAccent.shade400,
  ),
  CategoryModel(
    name: 'Movie',
    icon: Icons.movie,
    color: Colors.lightBlueAccent.shade200,
  ),
  CategoryModel(
    name: 'Home',
    icon: Icons.home,
    color: Colors.orangeAccent.shade200,
  ),
];
