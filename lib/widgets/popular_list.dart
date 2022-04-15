import 'package:flutter/material.dart';
import '../models/recipe.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 85,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(recipes[index].imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(recipes[index].name, overflow: TextOverflow.ellipsis, maxLines: 1, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                            const SizedBox(height: 5,),
                            Text(recipes[index].maker, overflow: TextOverflow.ellipsis, maxLines: 1, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.yellow,
                      child: Text(
                        recipes[index].maker[0],
                        style: TextStyle(color: recipes[index].startingGradient),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        Icon(Icons.share),
                        SizedBox(width: 7,),
                        Icon(Icons.bookmark),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
