import 'package:flutter/material.dart';
import '../widgets/recipe_list.dart';
import '../widgets/popular_list.dart';
import '../widgets/custom_navigation_bar.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);
  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe7eefb),
      bottomNavigationBar: const CustomNavigationBar(),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Recipe', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Color(0xFF0E0E2D),),),
                        SizedBox(
                          height: 36,
                          child: Icon(Icons.menu),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.53,),
                  RecipeList(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: const [
                        Icon(Icons.favorite, color: Colors.deepOrange,),
                        SizedBox(width: 4),
                        Text('Popular', style: TextStyle(fontSize: 20, color: Color(0xffF9AE89),),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16,),
                  PopularList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
