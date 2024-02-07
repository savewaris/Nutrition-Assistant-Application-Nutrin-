import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Directionality(
      textDirection: TextDirection.ltr, // Change to TextDirection.rtl if needed
      child: MenulistWidget(),
    ),
  ));
}
class MenulistWidget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator MenulistWidget - FRAME
            return Container(
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
        child: Container(
        width: 430,
        height: 207,
        decoration: BoxDecoration(
          color : Color.fromRGBO(0, 145, 191, 1),
  )
      )
      ),Positioned(
        top: 240,
        left: 18,
        child: Text('List', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 566,
        left: 18,
        child: Text('Result', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 68,
        left: 100,
        child: Text('Menu List', textAlign: TextAlign.left, style: TextStyle(
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
        left: 320,
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
        left: 308,
        child: Container(
        width: 89,
        height: 8,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 293,
        left: 37,
        child: Container(
        width: 350,
        height: 242,
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
      )
      ),Positioned(
        top: 329,
        left: 64,
        child: Text('Red Sauce                 --- Calories\nSalmon Don              --- Calories\nPadThai                     --- Calories', 
        textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 637,
        left: 37,
        child: Container(
        width: 350,
        height: 242,
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
      )
      ),Positioned(
        top: 680,
        left: 145,
        child: Text('---', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 128,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 801,
        left: 120,
        child: Text('Calories', textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 48,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    );
          }
        }
        