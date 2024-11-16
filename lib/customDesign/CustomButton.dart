import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double size;
  final double bordercirclar;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.size,
    required this.bordercirclar
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Red color for the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordercirclar), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10), // Button height
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
