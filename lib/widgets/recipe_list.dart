import 'package:flutter/material.dart';
import '../models/recipe.dart';
import './recipe_card.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({Key? key}) : super(key: key);
  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  final PageController pageController = PageController(viewportFraction: 0.75);
  int currentPage = 0;

  @override
  void initState() {
    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        setState(() {
          currentPage = position;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 401,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          bool active = index == currentPage;
          return Opacity(
            opacity: currentPage == index ? 1.0 : 0.5,
            child: RecipeCard(
              index: index,
              active: active,
              recipe: recipes[index],
            ),
          );
        },
      ),
    );
  }
}
