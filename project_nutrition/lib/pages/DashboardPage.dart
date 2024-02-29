import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press
            Navigator.pushNamed(context, '/home');
          },
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Dashboard!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  // Widget building(BuildContext context) {
  //   return Center(
  //       child: SfCircularChart(
  //           title: ChartTitle(text: 'Sales by sales person'),
  //           legend: Legend(isVisible: true),
  //           series: <PieSeries<_PieData, String>>[
  //         PieSeries<_PieData, String>(
  //             explode: true,
  //             explodeIndex: 0,
  //             dataSource: pieData,
  //             xValueMapper: (_PieData data, _) => data.xData,
  //             yValueMapper: (_PieData data, _) => data.yData,
  //             dataLabelMapper: (_PieData data, _) => data.text,
  //             dataLabelSettings: DataLabelSettings(isVisible: true)),
  //       ]));
  // }
}

void main() {
  runApp(MaterialApp(
    home: DashboardPage(),
  ));
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  String? text;
}
