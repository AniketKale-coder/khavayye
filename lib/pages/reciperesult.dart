import 'package:flutter/material.dart';
import 'package:khavayye/model/food_api/recipe.dart';

class RecipeResult extends StatelessWidget {
  const RecipeResult({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dish = ModalRoute.of(context)!.settings.arguments as Recipe;
    String? img = dish.image;
    // String?

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.amber],
                stops: [0.1, 0.8]),
          ),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network("$img"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dish.label.toString(),
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                "Ingredients:",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red[800]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          spacing: 5,
                          runSpacing: 6,
                          alignment: WrapAlignment.spaceEvenly,
                          children: dish.ingredientLines
                                  ?.map(
                                    (ing) => Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          ing.toString(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList() ??
                              [],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
