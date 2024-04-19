import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _goalController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = 'John Doe';
    _emailController.text = 'johndoe@example.com';
    _goalController.text = 'My dietary goal';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Setting'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _goalController,
              decoration: InputDecoration(
                labelText: 'Dietary Goal',
                border: OutlineInputBorder(),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle logout button press
                Navigator.pushNamed(context, '/');
              },
            ),
            Divider(
              color: Colors.grey,
              height: 20,
            ),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                // Handle save button press
                // Save the updated user information here
                print('Name: ${_nameController.text}');
                print('Email: ${_emailController.text}');
                print('Dietary Goal: ${_goalController.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingPage(),
  ));
}
