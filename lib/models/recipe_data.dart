import 'package:flutter/material.dart';
import './recipe.dart';

class RecipeData with ChangeNotifier {
  final List<Recipe> _recipeData = [
    Recipe(
        name: 'Vegan apricot tart',
        imageUrl: 'imageUrl',
        maker: 'Foodie Yuki',
      startingGradient: const Color(0xFFF37552),
      endingGradient: const Color(0xFFF58B5A),
    ),
    Recipe(
      name: 'Chorizo & mozzarella gnocchi bake',
      imageUrl: 'imageUrl',
      maker: 'Marianne Turner',
      startingGradient: const Color(0xFF621e14),
      endingGradient: const Color(0xFFF58B5A),
    ),
    Recipe(
      name: 'Easy butter chicken',
      imageUrl: 'imageUrl',
      maker: 'Jennifer Joyce',
      startingGradient: const Color(0xFFe18b41),
      endingGradient: const Color(0xFFc7c73d),
    ),
    Recipe(
      name: 'Easy classic lasagne',
      imageUrl: 'imageUrl',
      maker: 'Angela Boggiano',
      startingGradient: const Color(0xFFaf781d),
      endingGradient: const Color(0xFFd6a651),
    ),
  ];

  List<Recipe> get recipeData {
    return [..._recipeData];
  }
}