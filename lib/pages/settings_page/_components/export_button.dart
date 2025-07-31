import 'package:flutter/material.dart';

class ExportButton extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String text;
  final VoidCallback onTap;

  const ExportButton({
    super.key, required this.color, required this.icon, required this.text, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              children: [
                icon,
                Text(text, style: TextStyle(
                  color: Colors.white
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}