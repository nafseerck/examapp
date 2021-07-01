import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Category {
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final String imageUrl;

  Category({
    required this.imageUrl,
    required this.categoryName,
    this.description = '',
    this.backgroundColor = Colors.orange,
    this.icon = FontAwesomeIcons.question,
  });
}
