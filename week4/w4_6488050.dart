import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    home: Directionality(
      textDirection: TextDirection.ltr, // Change to TextDirection.rtl if needed
      child: CalculatorWidget(),
    ),
  ));
}

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator CalculatorWidget - FRAME

    return Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 430,
                  height: 207,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 145, 191, 1),
                  ))),
          Positioned(
              top: 92,
              left: 33,
              child: Text(
                'Calories Calculator',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Roboto',
                    fontSize: 40,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 288,
              left: 37,
              child: Container(
                  width: 356,
                  height: 80.00003051757812,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Your Goal',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: Container(
                            width: 356,
                            height: 32.000030517578125,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Type your goal',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 32,
                                  left: 0,
                                  child: Transform.rotate(
                                    angle: -0.000005008956130975318 *
                                        (math.pi / 180),
                                    child: Divider(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        thickness: 1),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 614,
              left: 37,
              child: Container(
                  width: 356,
                  height: 80.00003051757812,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Activity Level',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: Container(
                            width: 356,
                            height: 32.000030517578125,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Type Activity Level',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 32,
                                  left: 0,
                                  child: Transform.rotate(
                                    angle: -0.000005008956130975318 *
                                        (math.pi / 180),
                                    child: Divider(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        thickness: 1),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 396,
              left: 37,
              child: Container(
                  width: 152,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Gender',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: Container(
                            width: 152,
                            height: 28,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Type Gender',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 28,
                                  left: 0,
                                  child: Divider(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      thickness: 1)),
                            ]))),
                  ]))),
          Positioned(
              top: 396,
              left: 241,
              child: Container(
                  width: 152,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Ages',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: Container(
                            width: 152,
                            height: 28,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Type age',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 28,
                                  left: 0,
                                  child: Divider(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      thickness: 1)),
                            ]))),
                  ]))),
          Positioned(
              top: 505,
              left: 37,
              child: Container(
                  width: 152,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Weight',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: Container(
                            width: 152,
                            height: 28,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'In kg',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 28,
                                  left: 0,
                                  child: Divider(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      thickness: 1)),
                            ]))),
                  ]))),
          Positioned(
              top: 505,
              left: 241,
              child: Container(
                  width: 152,
                  height: 76,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Height',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: Container(
                            width: 152,
                            height: 28,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'In cm',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 28,
                                  left: 0,
                                  child: Divider(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      thickness: 1)),
                            ]))),
                  ]))),
          Positioned(
              top: 756,
              left: 33,
              child: Container(
                  width: 360,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(131, 225, 255, 1),
                  ))),
          Positioned(
              top: 765,
              left: 140,
              child: Text(
                'Calculate',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 59, 148, 1),
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(top: 288, left: 37, child: Container()),
        ]));
  }
}
