import 'package:flutter/material.dart';
import 'package:khavayye/model/food_api/recipe.dart';
import 'package:khavayye/utils/utils.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 14.0),
      child: Card(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 10,
              child: Image.network(
                recipe.image!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Text("Error!"),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/reciperesult",
                    arguments: recipe);
              },
              title: Text(recipe.label ?? "Label"),
              subtitle:
                  Text("Calories:" + "${recipe.calories?.toStringAsFixed(2)}"),
              trailing: Chip(
                label: Text(
                  (recipe.totalTime != null || recipe.totalTime!.toInt() != 0)
                      ? Utils.durationToString(recipe.totalTime?.toInt() ?? 0)
                      : "NA",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
