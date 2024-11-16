import 'package:ammar_project/Pages/SignInScreen.dart';
import 'package:ammar_project/Cards/ticket_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Ticket Widget',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: Colors.red),
        appBarTheme: AppBarTheme(color:Colors.transparent,scrolledUnderElevation: 0),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true
      ),
      home: Scaffold(
        body: Center(
          child: SignInScreen()),
        ),
    );
  }
}