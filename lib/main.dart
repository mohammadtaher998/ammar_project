import 'package:ammar_project/Homepage_Ad.dart';
import 'package:ammar_project/Pages/SignIn_Screen.dart';
import 'package:ammar_project/Cards/ticket_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Ticket Widget',
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(buttonColor: Colors.red),
        appBarTheme: const AppBarTheme(color:Colors.transparent,scrolledUnderElevation: 0),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true
      ),
      home: Scaffold(
        body: Center(
          child: HomePage1()),
        ),
    );
  }
}