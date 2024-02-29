import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_nutrition/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class DailyCaloricPage extends StatefulWidget {
  @override
  _DailyCaloricPageState createState() => _DailyCaloricPageState();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Push Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DailyCaloricPage(),
      // Initially FirstRoute
    );
  }
}

class _DailyCaloricPageState extends State<DailyCaloricPage> {
  // Stream<QuerySnapshot>? _caloricDataStream;
  // @override
  // void initState() {
  //   super.initState();
  //   // Fetch data from Firestore on initialization
  //   _caloricDataStream =
  //       FirebaseFirestore.instance.collection('daily_caloric_data').snapshots();
  // }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator DailycaloricWidget - FRAME
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 145, 191, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press
            Navigator.pushNamed(context, '/home');
          },
        ),
        title: Text(
          'Daily Caloric',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 75,
              left: 23,
              child: Container(
                width: 350,
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(0, 145, 191, 1),
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 23,
              child: Text(
                'Daily Caloric',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
              ),
            ),

            Positioned(
              top: 90,
              left: 55,
              child: Text(
                'Calories Target',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 240,
              child: Text(
                'Protein Target',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
              ),
            ),

            Positioned(
              top: 15,
              left: 6,
              child: Container(),
            ),
            // Other Positioned Widgets for BMR, TDEE, Calories, and Protein results...
            Positioned(
              top: 225,
              left: 23,
              child: Text(
                'Your Calories Result',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 275,
              left: 23,
              child: Container(
                width: 350,
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(0, 145, 191, 1),
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Result").snapshots(),
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
                      children: <Widget>[
                        Text(
                          '\n\n\n\n\n\n\n\n\n\n\n\n\n                Protein:                               Calories:',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '      ${doc['R_protein']}             ${doc['R_cal']}',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Roboto',
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Positioned(
              top: 25,
              left: 272,
              child: Container(
                width: 100,
                height: 28,
                child: Stack(
                  children: <Widget>[
                    ElevatedButton(
                      // Or any other button type based on your design preference
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 100,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Color.fromRGBO(0, 145, 191, 1),
                        ),
                        child: GestureDetector(onTap: () {
                          Navigator.pushNamed(context, '/calculator');
                        }),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 25,
                      child: Text(
                        'Calculate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.w900,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
