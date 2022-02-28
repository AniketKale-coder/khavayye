import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:khavayye/model/food_api/food_api.dart';
import 'package:khavayye/widgets/recipe_card.dart';
// import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController searchController;
  late String dish;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    dish = searchController.text;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Response<Map<String, dynamic>>>(
        future: Dio().get(
            "https://api.edamam.com/search?q=$dish&app_id=9d517ff2&app_key=c4b73bb6805ce5716257dd395460c606"),
        builder: (context, snap) {
          if (snap.hasError) {
            return Center(
              child: Dialog(
                child: Text(snap.hasError.toString()),
              ),
            );
          }
          if (!snap.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          FoodApi res = FoodApi.fromJson(snap.data!.data!);

          return Stack(
            children: [
              SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.amber],
                        stops: [0.1, 0.8]),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    dish = "ladoo";
                                  },
                                );
                              },
                              child: Icon(Icons.search),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                controller: searchController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Let's Cook something New"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "What Do You Want To Cook Today?",
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Let's Cook SomeThing New!",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: res.hits?.length ?? 0,
                          itemBuilder: (context, i) {
                            return RecipeCard(recipe: res.hits![i].recipe!);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
