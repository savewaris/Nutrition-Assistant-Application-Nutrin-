

import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(CaloriesInfoPage());
// }

class CaloriesInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press
            Navigator.pushNamed(context, '/recdish');
          },
        ),
        title: Text(
          'Calories Information',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              child: ProductBox(Calnum: "000", Cal: "Calories"),
            ),
            ElevatedButton(
              // Or any other button type based on your design preference
              onPressed: () {
                Navigator.pushNamed(context, '/menulist');
              },
              child: Text(
                "Add to Recipes List",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CaloriesInfo extends StatefulWidget {
  const CaloriesInfo({super.key, required this.title});

  final String title;

  @override
  State<CaloriesInfo> createState() => _CaloriesInfo();
}

class _CaloriesInfo extends State<CaloriesInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseFirestore.instance.collection("Result").snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');

        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            var doc = snapshot.data!.docs[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ID: ${doc['ID']}'),
                Text('Fullname: ${doc['Fullname']}'),
                Text('3 Years Goal: ${doc['3 Years Goal']}'),
              ],
            );
          },
        );
      },
    ));
  }
}

class ProductBox extends StatelessWidget {
  final String Calnum;
  final String Cal;
  // final String image;

  ProductBox({
    required this.Calnum,
    required this.Cal,
    // required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // image: DecorationImage(
              //   image: AssetImage("assets/Home/" + image),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Calnum,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 100,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                        // Shadow position
                        offset: Offset(2.0, 2.0),
                        // Shadow color
                        color: Colors.black.withOpacity(0.5),
                        // Shadow blur radius
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
                Text(
                  Cal,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 50,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                        // Shadow position
                        offset: Offset(2.0, 2.0),
                        // Shadow color
                        color: Colors.black.withOpacity(0.5),
                        // Shadow blur radius
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
