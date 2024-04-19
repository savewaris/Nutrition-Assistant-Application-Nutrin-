// import 'package:flutter/material.dart';

// class CalculatorPage extends StatefulWidget {
//   @override
//   _CalculatorPageState createState() => _CalculatorPageState();
// }

// class _CalculatorPageState extends State<CalculatorPage> {
//   final _formKey = GlobalKey<FormState>();
//   String goal = '';
//   String gender = '';
//   String age = '';
//   String weight = '';
//   String height = '';
//   String activityLevel = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Calories Calculator',
//           style: TextStyle(
//             fontSize: 24, // Adjust font size
//             fontWeight: FontWeight.bold, // Make text bold
//             color: Colors.white, // Change text color to white
//           ),
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue, Colors.lightBlue], // Adjust gradient colors
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Your Goal',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Type your goal',
//                   border: UnderlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your goal';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   setState(() {
//                     goal = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Gender',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Type Gender',
//                   border: UnderlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   setState(() {
//                     gender = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Age',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Type age',
//                   border: UnderlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   setState(() {
//                     age = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Weight',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'In kg',
//                   border: UnderlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   setState(() {
//                     weight = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Height',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'In cm',
//                   border: UnderlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   setState(() {
//                     height = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Activity Level',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: 'Type Activity Level',
//                   border: UnderlineInputBorder(),
//                 ),
//                 onChanged: (value) {
//                   setState(() {
//                     activityLevel = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 18),
//               Center(
//                 child: Container(
//                   width: 200, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         Navigator.pushNamed(context, '/dailycal');
//                       }
//                     },
//                     child: Text(
//                       'Calculate',
//                       style: TextStyle(fontSize: 25), // Adjust font size
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CalculatorPage(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:project_nutrition/pages/DailyCaloricPage.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _formKey = GlobalKey<FormState>();
  late double _weight;
  late double _height;
  late int _age;
  late String _gender = 'Male'; // Initialize _gender to 'Male' by default
  late String _activityLevel =
      'Sedentary'; // Initialize _activityLevel to 'Sedentary' by default
  late double _totalCalories;
  late double _bmr;

  void _calculateCalories() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _calculateCalorieInfo();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DailyCaloricPage(
            bmr: _bmr.toStringAsFixed(2),
            totalCalories: _totalCalories.toStringAsFixed(2),
          ),
        ),
      );
    }
  }

  void _calculateCalorieInfo() {
    // Implement the calorie calculation logic here
    double activityFactor = 1.2; // Sedentary
    switch (_activityLevel) {
      case 'Light':
        activityFactor = 1.375;
        break;
      case 'Moderate':
        activityFactor = 1.55;
        break;
      case 'Active':
        activityFactor = 1.725;
        break;
      case 'Very Active':
        activityFactor = 1.9;
        break;
    }

    _bmr = 10 * _weight +
        6.25 * _height -
        5 * _age +
        (_gender == 'Male' ? 5 : -161);
    _totalCalories = _bmr * activityFactor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calories Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight (kg)',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your weight';
                  }
                  return null;
                },
                onSaved: (value) {
                  _weight = double.parse(value!);
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height (cm)',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height';
                  }
                  return null;
                },
                onSaved: (value) {
                  _height = double.parse(value!);
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = int.parse(value!);
                },
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                ),
                value: _gender,
                items: ['Male', 'Female'].map((gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your gender';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Activity Level',
                ),
                value: _activityLevel,
                items: [
                  'Sedentary',
                  'Light',
                  'Moderate',
                  'Active',
                  'Very Active'
                ].map((level) {
                  return DropdownMenuItem<String>(
                    value: level,
                    child: Text(level),
                  );
                }).toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your activity level';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _activityLevel = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _calculateCalories,
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
