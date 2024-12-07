import 'package:flutter/material.dart';

class CustomTextCard extends StatelessWidget {
  final String text;
  final double fontSize;
  const CustomTextCard({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white70,
        fontSize: fontSize,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
