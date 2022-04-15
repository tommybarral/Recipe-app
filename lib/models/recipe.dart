import 'package:flutter/material.dart';

class Recipe {
  final String name;
  final String imageUrl;
  final String maker;
  final Color startingGradient;
  final Color endingGradient;

  Recipe({
    required this.name,
    required this.imageUrl,
    required this.maker,
    required this.startingGradient,
    required this.endingGradient,
  });
}

 var recipes = [
  Recipe(
    name: 'Vegan apricot tart',
    imageUrl: 'https://delight-fuel.com/wp-content/uploads/2020/02/7U1A0877-683x1024.jpg',
    maker: 'Foodie Yuki',
    startingGradient: const Color(0xFFF37552),
    endingGradient: const Color(0xFFF58B5A),
  ),
  Recipe(
    name: 'Chorizo & mozzarella gnocchi bake',
    imageUrl: 'https://smoothrecipe.com/wp-content/uploads/2021/10/Chorizo-Mozzarella-Gnocchi-Bake2-300x246.png',
    maker: 'Marianne Turner',
    startingGradient: const Color(0xFF621e14),
    endingGradient: const Color(0xFFF58B5A),
  ),
  Recipe(
    name: 'Easy butter chicken',
    imageUrl: 'https://img.taste.com.au/AbiWkcA0/taste/2016/11/easy-butter-chicken-74432-1.jpeg',
    maker: 'Jennifer Joyce',
    startingGradient: const Color(0xFFe18b41),
    endingGradient: const Color(0xFFc7c73d),
  ),
  Recipe(
    name: 'Easy classic lasagne',
    imageUrl: 'https://img.taste.com.au/Jki2ky0M/taste/2016/11/classic-lasagne-95039-1.jpeg',
    maker: 'Angela Boggiano',
    startingGradient: const Color(0xFFaf781d),
    endingGradient: const Color(0xFFd6a651),
  ),
];
