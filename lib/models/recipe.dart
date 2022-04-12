import 'package:flutter/material.dart';

class Recipe {
  final String name;
  final String imageUrl;
  final String maker;
  Color? startingGradient;
  Color? endingGradient;

  Recipe({
    required this.name,
    required this.imageUrl,
    required this.maker,
    this.startingGradient,
    this.endingGradient,
  });
}