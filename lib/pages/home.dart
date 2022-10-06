import 'dart:convert';

import 'package:covid19/widgets/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covid19/models/summary.dart';

class HomePage extends StatelessWidget {
  late SummaryModel dataSummary;

  static const primaryDarkColor = Color(0xFF232931);
  static const secondaryDarkColor = Color(0xFF393E46);
  static const strongTealColor = Color(0xFF4ECCA3);
  static const lightColor = Color(0xFFEEEEEE);

  getSummary() async {
    var response = await http.get(Uri.parse("https://covid19.mathdro.id/api"));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;

    dataSummary = SummaryModel.fromJson(data);

    print('Confirmed: ${dataSummary.confirmed.value}');
    print('Deaths: ${dataSummary.deaths.value}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDarkColor,
      appBar: AppBar(
        title: Text("COVID-19 Summary"),
        centerTitle: true,
        backgroundColor: strongTealColor,
      ),
      body: FutureBuilder(
        future: getSummary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: Text(
              "Loading...",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ));
          }

          return Column(
            children: [
              SummaryItem(
                lightColor: lightColor,
                title: "CONFIRMED",
                value: dataSummary.confirmed.value.toString(),
              ),
              SummaryItem(
                lightColor: lightColor,
                title: "DEATHS",
                value: dataSummary.deaths.value.toString(),
              ),
            ],
          );
        },
      ),
    );
  }
}
