import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isPassword;
  final TextInputType keyboardType;
  final bool isReadOnly;
  final Function()? onTap;
  final Color hintTextColor; // New property for custom hint color
  final int? maxLines; // Add this property
  final TextEditingController? controller; // Add this property

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.isReadOnly = false,
    this.onTap,
    this.hintTextColor = Colors.grey, // Default hint text color
    this.maxLines = 1, // Initialize maxLines
    this.controller, // Initialize controller
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // Use the controller
      obscureText: isPassword,
      keyboardType: keyboardType,
      readOnly: isReadOnly,
      onTap: onTap,
      maxLines: maxLines, // Pass maxLines here
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey),
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor), // Apply custom color to hint
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
