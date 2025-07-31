import 'package:flutter/material.dart';

class SummaryData extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  const SummaryData({
    super.key, required this.title, required this.subtitle, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(
          color: color,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
        Text(subtitle, style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500
        ),),
      ],
    );
  }
}