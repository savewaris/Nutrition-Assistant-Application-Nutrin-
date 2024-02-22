import 'package:flutter/material.dart';
// TODO TASK #1
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// TODO TASK #2
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application .
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: StreamBuilder(
          stream:
              // TODO TASK #3
              FirebaseFirestore.instance.collection("WarisInfo").snapshots(),
          builder: (context, snapshot) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (context, index) {
                print(snapshot.data?.docs[index]["StudentID"]); // debugging
                print(snapshot.data?.docs[index]["Fullname"]);
                print(snapshot.data?.docs[index]["3YearsGoal"]);
                return Column(
                  children: [
                    ListTile(
                      // TODO TASK #4
                      title: Text(snapshot.data?.docs[index]["StudentID"]),
                    ),
                    ListTile(
                      // TODO TASK #4
                      title: Text(snapshot.data?.docs[index]["Fullname"]),
                    ),
                    ListTile(
                      // TODO TASK #4
                      title: Text(snapshot.data?.docs[index]["3YearsGoal"]),
                    ),
                  ],
                );
              },
            );
          }),
    );
  }
}
