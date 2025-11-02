import 'package:flutter/material.dart';

AppBar taskDeatilsAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.close, color: Colors.white),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.repeat_sharp, color: Colors.white),
        onPressed: () {},
      ),
    ],
    elevation: 0,
  );
}
