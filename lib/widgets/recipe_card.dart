import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeCard extends StatelessWidget {

  final int index;
  final bool active;
  Recipe recipe;

  RecipeCard({
    Key? key,
    required this.index,
    required this.active,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double blur = active ? 16 : 0;
    final double offset = active ? 4 : 0;
    final double top = active ? 0 : 46;

    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        left: active ? 32.5 : 0,
        bottom: 0,
        right: 15.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: recipe.startingGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: blur,
            offset: Offset(0, offset),
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(recipe.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: LinearGradient(
                colors: [
                  recipe.startingGradient,
                  recipe.endingGradient.withOpacity(0.3),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                tileMode: TileMode.clamp,
                stops: const [0.3, 0.6],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 87,
              padding: const EdgeInsets.only(top: 10, left: 24, right: 16),
              decoration: BoxDecoration(
                color: recipe.startingGradient,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(recipe.name, overflow: TextOverflow.ellipsis, maxLines: 2, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 84.7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 24,
                    padding: const EdgeInsets.symmetric(horizontal: 8.5, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Text('Recipe', style: TextStyle(fontSize: 13, color: recipe.startingGradient),),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.share, color: Colors.white, size: 21,),
                      SizedBox(width: 8.65,),
                      Icon(Icons.favorite, color: Colors.white, size: 21,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
