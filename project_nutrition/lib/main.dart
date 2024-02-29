import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_nutrition/firebase_options.dart';
import 'package:project_nutrition/pages/DashboardPage.dart';
import 'package:project_nutrition/pages/HomePage.dart';
import 'package:project_nutrition/pages/LoginPage.dart';
import 'package:project_nutrition/pages/MenuPage.dart';
import 'package:project_nutrition/pages/MenuListPage.dart';
import 'package:project_nutrition/pages/DailyCaloricPage.dart';
import 'package:project_nutrition/pages/CalculatorPage.dart';
import 'package:project_nutrition/pages/RecommendDishPage.dart';
import 'package:project_nutrition/pages/CaloriesInfoPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          "/menulist": (context) => MenuListPage(),
          "/dailycal": (context) => DailyCaloricPage(),
          "/calculator": (context) => CalculatorPage(),
          "/dashboard": (context) => DashboardPage(),
          "/recdish": (context) => RecommendDishPage(),
          "/caloriesinfo": (context) => CaloriesInfoPage()
        });
  }
}
