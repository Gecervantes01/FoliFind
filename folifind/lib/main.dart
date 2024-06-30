import 'package:flutter/material.dart';
import 'package:folifind/pages/intro_page.dart';
import 'package:folifind/pages/greenhouse/green_house.dart';
import 'package:folifind/pages/plant-scanner/plant_scanner.dart';
import 'package:folifind/pages/plant-search/plant_search.dart';


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
      initialRoute: '/',
      routes: { // define routes
        '/': (context) => const IntroPage(),
        '/greenhouse': (context) => const GreenHouse(),
        '/scanner': (context) => const PlantScanner(),
        '/search': (context) => const PlantSearch(),
      },
  );
  }

}