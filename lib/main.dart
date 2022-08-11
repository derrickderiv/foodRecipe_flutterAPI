import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe_project/home/main_food_page.dart';
import 'package:food_recipe_project/onboardingpage/onboardingmain.dart';
import 'package:food_recipe_project/pages/aboutus/aboutus_mainpage.dart';
import 'package:food_recipe_project/pages/foodRecipe_detail.dart';
import 'package:food_recipe_project/pages/profilepage.dart';
import 'package:food_recipe_project/states/foodRecipe_cubit.dart';
import 'package:food_recipe_project/widgets/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => FoodRecipeCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: ProfileScreen());
  }
}
