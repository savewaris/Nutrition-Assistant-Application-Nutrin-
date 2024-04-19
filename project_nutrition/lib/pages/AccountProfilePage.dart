import 'package:flutter/material.dart';

class AccountProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Account Profile'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'johndoe@example.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    // Handle settings button press
                    Navigator.pushNamed(context, '/Setting');
                  },
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    // Handle logout button press
                    Navigator.pushNamed(context, '/Thankyou');
                  },
                  icon: Icon(Icons.logout),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AccountProfilePage(),
  ));
}
