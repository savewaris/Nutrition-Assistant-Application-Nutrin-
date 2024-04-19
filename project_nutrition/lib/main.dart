import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_nutrition/firebase_options.dart';
import 'package:project_nutrition/pages/AccountProfilePage.dart';
import 'package:project_nutrition/pages/HomePage.dart';
import 'package:project_nutrition/pages/LoginPage.dart';
import 'package:project_nutrition/pages/MenuPage.dart';
import 'package:project_nutrition/pages/DailyCaloricPage.dart';
import 'package:project_nutrition/pages/CalculatorPage.dart';
import 'package:project_nutrition/pages/RecommendDishPage.dart';
import 'package:project_nutrition/pages/CaloriesInfoPage.dart';
import 'package:project_nutrition/pages/CaloriesInfoPage2.dart';
import 'package:project_nutrition/pages/CaloriesInfoPage3.dart';
import 'package:project_nutrition/pages/SettingPage.dart';
import 'package:project_nutrition/pages/ThankyouPage.dart';
import 'package:project_nutrition/Pages/RandomMealPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'project_nutrition',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          "/home": (context) => HomePage(),
          "/menu": (context) => MenuPage(),
          "/dailycal": (context) => DailyCaloricPage(
                bmr: '',
                totalCalories: '',
              ),
          "/calculator": (context) => CalculatorPage(),
          "/recdish": (context) => RecommendDishPage(),
          "/caloriesinfo": (context) => CaloriesInfoPage(),
          "/caloriesinfo2": (context) => CaloriesInfoPage2(),
          "/caloriesinfo3": (context) => CaloriesInfoPage3(),
          "/Profile": (context) => AccountProfilePage(),
          "/Thankyou": (context) => ThankYouPage(),
          "/Setting": (context) => SettingPage(),
          "/rmeal": (context) => RandomMeal(),
        });
  }
}
