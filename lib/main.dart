import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const primaryDarkColor = Color(0xFF232931);
  static const secondaryDarkColor = Color(0xFF393E46);
  static const strongTealColor = Color(0xFF4ECCA3);
  static const lightColor = Color(0xFFEEEEEE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDarkColor,
      appBar: AppBar(
        title: Text("COVID-19 Summary"),
        centerTitle: true,
        backgroundColor: strongTealColor,
      ),
      body: Column(
        children: [
          SummaryItem(
            lightColor: lightColor,
            title: "CONFIRMED",
            value: "28.000",
          ),
          SummaryItem(
            lightColor: lightColor,
            title: "DEATH",
            value: "90.280",
          ),
        ],
      ),
      // body: ,
    );
  }
}

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    Key? key,
    required this.lightColor,
    required this.title,
    required this.value,
  }) : super(key: key);

  final Color lightColor;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: lightColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: EdgeInsets.all(18),
      child: Container(
        decoration: BoxDecoration(
            color: lightColor, borderRadius: BorderRadius.circular(24)),
        height: 200,
        width: double.infinity,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
