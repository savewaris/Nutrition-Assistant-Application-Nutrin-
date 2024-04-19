import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NUTRITECH',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'THANK YOU',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Log In'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 155, 210, 255),
    );
  }
}
