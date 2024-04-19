// import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// // import 'dart:async';
// // import 'package:openfoodfacts/openfoodfacts.dart';

// // import 'firebase_options.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: DefaultFirebaseOptions.currentPlatform,
// //   );
// //   runApp(CaloriesInfoPage());
// // }

// class CaloriesInfoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             // Handle back button press
//             Navigator.pushNamed(context, '/recdish');
//           },
//         ),
//         title: Text(
//           'Calories Information',
//           style: TextStyle(
//               color: Colors.white,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w600),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//             ),
//             GestureDetector(
//               child: ProductBox(Calnum: "000", Cal: "Calories"),
//             ),
//             ElevatedButton(
//               // Or any other button type based on your design preference
//               onPressed: () {
//                 Navigator.pushNamed(context, '/menulist');
//               },
//               child: Text(
//                 "Add to Recipes List",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CaloriesInfo extends StatefulWidget {
//   const CaloriesInfo({super.key, required this.title});

//   final String title;

//   @override
//   State<CaloriesInfo> createState() => _CaloriesInfo();
// }

// class _CaloriesInfo extends State<CaloriesInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: StreamBuilder(
//       stream: FirebaseFirestore.instance.collection("Result").snapshots(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData)
//           return Center(child: CircularProgressIndicator());
//         if (snapshot.hasError) return Text('Error: ${snapshot.error}');

//         return ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: snapshot.data!.docs.length,
//           itemBuilder: (context, index) {
//             var doc = snapshot.data!.docs[index];
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('ID: ${doc['ID']}'),
//                 Text('Fullname: ${doc['Fullname']}'),
//                 Text('3 Years Goal: ${doc['3 Years Goal']}'),
//               ],
//             );
//           },
//         );
//       },
//     ));
//   }
// }

// class ProductBox extends StatelessWidget {
//   final String Calnum;
//   final String Cal;
//   // final String image;

//   ProductBox({
//     required this.Calnum,
//     required this.Cal,
//     // required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
//       child: Container(
//         height: 400,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 7,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Container(
//             padding: EdgeInsets.all(8),
//             width: MediaQuery.of(context).size.width * 0.8,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               // image: DecorationImage(
//               //   image: AssetImage("assets/Home/" + image),
//               //   fit: BoxFit.cover,
//               // ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   Calnum,
//                   style: TextStyle(
//                     color: const Color.fromARGB(255, 255, 255, 255),
//                     fontSize: 100,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.w900,
//                     shadows: [
//                       Shadow(
//                         // Shadow position
//                         offset: Offset(2.0, 2.0),
//                         // Shadow color
//                         color: Colors.black.withOpacity(0.5),
//                         // Shadow blur radius
//                         blurRadius: 4.0,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Text(
//                   Cal,
//                   style: TextStyle(
//                     color: const Color.fromARGB(255, 255, 255, 255),
//                     fontSize: 50,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.w900,
//                     shadows: [
//                       Shadow(
//                         // Shadow position
//                         offset: Offset(2.0, 2.0),
//                         // Shadow color
//                         color: Colors.black.withOpacity(0.5),
//                         // Shadow blur radius
//                         blurRadius: 4.0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CaloriesInfoPage extends StatefulWidget {
  const CaloriesInfoPage({Key? key}) : super(key: key);

  @override
  State<CaloriesInfoPage> createState() => _CaloriesInfoPageState();
}

class _CaloriesInfoPageState extends State<CaloriesInfoPage> {
  String _mealData = '';

  Future<void> fetchMealData() async {
    final response = await http.get(Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/lookup.php?i=52824'));

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
