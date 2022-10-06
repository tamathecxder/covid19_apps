import 'package:flutter/material.dart';

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
