import 'package:flutter/material.dart';
import 'package:folifind/pages/intro_page.dart';
import 'package:folifind/pages/greenhouse/green_house.dart';
import 'package:folifind/pages/plant-scanner/plant_scanner.dart';
import 'package:folifind/pages/plant-search/plant_search.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:folifind/tests/boxes.dart';


void main() async {

  // initilize hive
  await Hive.initFlutter();

  // open box(essentially a db)
  testBox = await Hive.openBox('testBox');

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