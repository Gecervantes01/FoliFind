import 'package:flutter/material.dart';
import 'package:folifind/pages/intro_page.dart';
import 'package:folifind/pages/greenhouse/green_house.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const IntroPage(),
      routes: {
        '/greenhouse': (context) => const GreenHouse(),
      },
  );
  }

}