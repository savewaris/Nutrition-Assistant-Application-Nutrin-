import 'package:flutter/material.dart';

class MenuListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator MenulistWidget - FRAME
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu List', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromRGBO(0, 145, 191, 1),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: Color.fromRGBO(0, 145, 191, 1),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                ElevatedButton(
                  // Or any other button type based on your design preference
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                ElevatedButton(
                  // Or any other button type based on your design preference
                  onPressed: () {
                    Navigator.pushNamed(context, '/menulist');
                  },
                  child: Text(
                    "Menu List",
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
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "List",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add functionality here
                    Navigator.pushNamed(context, '/dailycal');
                  },
                  child: ProductBox(
                      list: "Red Sauce             --- Calories",
                      resultcal: "",
                      cal: ""),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Result",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add functionality here
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child:
                      ProductBox(list: "", resultcal: "---", cal: "Calories"),
                ),
              ],
            ),
          )
        ])));
  }
}

class ProductBox extends StatelessWidget {
  final String list;
  final String resultcal;
  final String cal;
  // final String image;

  ProductBox({
    required this.list,
    required this.resultcal,
    required this.cal,
    // required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
      child: Container(
        height: 300,
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
                  list,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
                  resultcal,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
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
                  cal,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
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
