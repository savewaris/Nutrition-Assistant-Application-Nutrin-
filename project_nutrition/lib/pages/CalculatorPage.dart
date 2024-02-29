import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final _formKey = GlobalKey<FormState>();
  String goal = '';
  String gender = '';
  String age = '';
  String weight = '';
  String height = '';
  String activityLevel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calories Calculator',
          style: TextStyle(
            fontSize: 24, // Adjust font size
            fontWeight: FontWeight.bold, // Make text bold
            color: Colors.white, // Change text color to white
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue], // Adjust gradient colors
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Goal',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type your goal',
                  border: UnderlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your goal';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    goal = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Gender',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type Gender',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Age',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type age',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    age = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Weight',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'In kg',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    weight = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Height',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'In cm',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Activity Level',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Type Activity Level',
                  border: UnderlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    activityLevel = value;
                  });
                },
              ),
              SizedBox(height: 18),
              Center(
                child: Container(
                  width: 200, // Adjust the width as needed
                  height: 60, // Adjust the height as needed
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/dailycal');
                      }
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(fontSize: 25), // Adjust font size
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

void main() {
  runApp(MaterialApp(
    home: CalculatorPage(),
  ));
}
