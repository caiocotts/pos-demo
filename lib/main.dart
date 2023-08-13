import 'package:flutter/material.dart';
import 'package:pos/screen/welcome_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    ),
  );
}
