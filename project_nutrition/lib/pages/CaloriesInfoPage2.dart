import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CaloriesInfoPage2 extends StatefulWidget {
  const CaloriesInfoPage2({Key? key}) : super(key: key);

  @override
  State<CaloriesInfoPage2> createState() => _CaloriesInfoPageState2();
}

class _CaloriesInfoPageState2 extends State<CaloriesInfoPage2> {
  String _mealData = '';

  Future<void> fetchMealData() async {
    final response = await http.get(Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/lookup.php?i=52841'));

    if (response.statusCode == 200) {
      setState(() {
        final jsonData = jsonDecode(response.body);
        final meal = jsonData['meals'][0];
        final StringBuffer buffer = StringBuffer();

        // Meal
        _appendIfNotEmpty(buffer, meal['strMeal'], 'Meal');
        _appendIfNotEmpty(buffer, meal['strTags'], 'Tags');
        buffer.write('\n');

        // Instructions
        buffer.write('Instructions\n');
        _appendIfNotEmpty(buffer, meal['strInstructions'], '');
        buffer.write('\n\n');

        // Ingredients and Measure
        buffer.write('Ingredients and Measure\n');
        for (int i = 1; i <= 20; i++) {
          final ingredient = meal['strIngredient$i'];
          final measure = meal['strMeasure$i'];
          if (ingredient != null && ingredient.trim().isNotEmpty) {
            buffer.write('$i. ${_formatIngredient(ingredient)}');
            if (measure != null && measure.trim().isNotEmpty) {
              buffer.write('  (Measure: $measure)');
            }
            buffer.write('\n');
          }
        }

        // Source
        buffer.write('\nSource:\n');
        _appendIfNotEmpty(buffer, meal['strSource'], '');

        _mealData = buffer.toString();
      });
    } else {
      throw Exception('Failed to load meal data');
    }
  }

  String _formatIngredient(String ingredient) {
    if (ingredient.startsWith('Str') && ingredient.length > 3) {
      return ingredient.substring(3);
    }
    return ingredient;
  }

  void _appendIfNotEmpty(StringBuffer buffer, String? data, String title) {
    if (data != null && data.trim().isNotEmpty) {
      buffer.write('$title: $data\n');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMealData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 145, 191, 1),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context); // Changed to pop instead of pushNamed
            },
          ),
          title: const Text(
            'Calories Information',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Center(
          child: _mealData.isEmpty
              ? CircularProgressIndicator()
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildSection('Meal'),
                        _buildSection('Instructions'),
                        _buildSection('Ingredients and Measure'),
                        _buildSection('Source'),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 1,
          color: Colors.black,
          margin: EdgeInsets.only(bottom: 8.0),
        ),
        Text(
          _extractData(title),
          style: TextStyle(fontSize: 16),
        ),
        Container(
          height: 16,
        ),
      ],
    );
  }

  String _extractData(String section) {
    final startIndex = _mealData.indexOf(section);
    if (startIndex == -1) return '';
    final endIndex = _mealData.indexOf('\n\n', startIndex);
    if (endIndex == -1) return _mealData.substring(startIndex);
    return _mealData.substring(startIndex, endIndex);
  }
}
