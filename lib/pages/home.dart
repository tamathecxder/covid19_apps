import 'package:covid19/widgets/summary_item.dart';
import 'package:flutter/material.dart';

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
