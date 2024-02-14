import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home:  DailycaloricWidget(),
      // Initially FirstRoute
    );
  }
}

class DailycaloricWidget extends StatelessWidget {
  const DailycaloricWidget({Key? key}) : super(key: key);
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator DailycaloricWidget - FRAME
            return Scaffold( body:
              Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 287,
        left: 23,
        
        child: Container(
        width: 384,
        height: 125,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          
      color : Color.fromRGBO(0, 145, 191, 1),
      
  )
      )
      ),
      Positioned(
              top: 0,
              left: 0,
              
              child: IconButton(
                icon: const Icon(Icons.arrow_back,), // Color: blue
                onPressed: () {
                  // Your back button navigation logic here
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondRoute(data: 'Hello from First Page'),
                  ),
                );
                },
              ),
            ),
      Positioned(
        top: 235,
        left: 23,
        child: Text('Daily Caloric', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),
      
      Positioned(
        top: 235,
        left: 280,
        
        child: Container(
      width: 127,
      height: 28,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 127,
        height: 28,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(0, 145, 191, 1),
  )
      )
      ),
      
      Positioned(
        top: 7,
        left: 40,
        child: Text('Calculate', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 304,
        left: 55,
        child: Text('Calories Target', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),Positioned(
        top: 304,
        left: 260,
        child: Text('Protein Target', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 430,
        height: 207,
        decoration: BoxDecoration(
          color : Color.fromRGBO(0, 145, 191, 1),
  )
      )
      ),
      Positioned(
              top: 0,
              left: 0,
              
              child: IconButton(
                icon: const Icon(Icons.arrow_back,), // Color: blue
                onPressed: () {
                  // Your back button navigation logic here
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondRoute(data: 'Hello from First Page'),
                  ),
                );
                },
              ),
            ),Positioned(
        top: 103,
        left: 29,
        child: Text('Daily Caloric', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 48,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),Positioned(
        top: 15,
        left: 6,
        child: Container()
      ),Positioned(
        top: 342,
        left: 67,
        child: Text('1800', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 36,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 342,
        left: 268,
        child: Text('104g', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 36,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 523,
        left: 77,
        child: Container(
      width: 56,
      height: 84,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 2,
        child: Text('BMR', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),Positioned(
        top: 56,
        left: 0,
        child: Text('1111', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 680,
        left: 77,
        child: Container(
      width: 58,
      height: 106,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 78,
        left: 2,
        child: Text('1111', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 0,
        left: 0,
        child: Text('TDEE', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 523,
        left: 259,
        child: Container(
      width: 100,
      height: 84,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 56,
        left: 19,
        child: Text('1111', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 0,
        left: 0,
        child: Text('Calrories', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 680,
        left: 269,
        child: Container(
      width: 85,
      height: 106,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 78,
        left: 10,
        child: Text('1111', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 0,
        left: 0,
        child: Text('Protein', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 454,
        left: 23,
        child: Text('Your Calories Result', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w900,
        height: 1
      ),)
      ),
        ]
      )
      )
    );
          }
        }
        
class SecondRoute extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  // TODO 2: Create data as String HERE
  final String data;

  SecondRoute({
    Key? key,
    // TODO 3: define data as an argument of constructor HERE
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
                return Scaffold( body:
                 Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: GestureDetector(
        onTap: () {
        Navigator.pop(context); // This will pop the current screen and return to the previous one
        },
        child: Container(
        width: 430,
        height: 207,
        decoration: BoxDecoration(
          color : Color.fromRGBO(0, 145, 191, 1),
        )
        ))
      ),
      
      Positioned(
        top: 466,
        left: 18,
        child: Text('Daily Calory Intake', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 704,
        left: 18,
        child: Text('Dashboard', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 68,
        left: 18,
        child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 48,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 178,
        left: 42,
        child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 178,
        left: 191,
        child: Text('Menu', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 178,
        left: 316,
        child: Text('Menu List', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 199,
        left: 35,
        child: Container(
        width: 58,
        height: 8,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 513,
        left: 37,
        child: GestureDetector(
    onTap: () {
      Navigator.pop(context); // This will pop the current screen and return to the previous one
    },
        child: Container(
        width: 350,
        height: 147,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(245, 245, 245, 1),
  ))
      )
      ),Positioned(
        top: 751,
        left: 37,
        child: GestureDetector(
    onTap: () {
      Navigator.pop(context); // This will pop the current screen and return to the previous one
    },
        child: Container(
        width: 350,
        height: 147,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(245, 245, 245, 1),
  )
         ) )
      ),Positioned(
        top: 543,
        left: 71,
        child: Text('Calories target', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 787,
        left: 63,
        child: Text('Remaining Calories', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 577,
        left: 83,
        child: Text('1800', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 36,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 821,
        left: 104,
        child: Text('640', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 36,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 577,
        left: 256,
        child: Text('104g', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 36,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 821,
        left: 266,
        child: Text('60g', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 36,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 543,
        left: 247,
        child: Text('Protein target', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 787,
        left: 232,
        child: Text('Remaining Protein', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 237,
        left: 18,
        child: Text('Suggestions', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 289,
        left: 19,
        child:  //Mask holder Template
    Container(
      width: 329,
      height: 147,
      decoration: BoxDecoration(
        borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
        image: DecorationImage(
          image: AssetImage('images/Image1.png'),
          fit: BoxFit.fitWidth,
        ),
      ), 
    )
      ),Positioned(
        top: 289,
        left: 373,
        child:  //Mask holder Template
    Container(
      width: 57,
      height: 147,
      decoration: BoxDecoration(
        borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
        image: DecorationImage(
          image: AssetImage('images/Image3.png'),
          fit: BoxFit.fill,
        ),
      ),
    )
      ),
        ]
      )
      )
    );
  }
}