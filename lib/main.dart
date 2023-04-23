import 'package:flutter/material.dart';
import 'screens/home_page.dart';
void main() => runApp(const Deliveroo());


class Deliveroo extends StatelessWidget {
  const Deliveroo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: Colors.white,

      ),
      home: const HomePage(),
    );
  }
}









