import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khavayye/pages/reciperesult.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FoodRecipeApp",
      theme: ThemeData(fontFamily: GoogleFonts.redRose().fontFamily),
      // home: HomePage(),
      routes: {
        '/': (context) => HomePage(),
        '/reciperesult': (context) => RecipeResult(),
      },
    );
  }
}
