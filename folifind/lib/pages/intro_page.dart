import 'package:flutter/material.dart';
import 'package:folifind/assets/navbar.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intro page'),), // top banner
      bottomNavigationBar: Navbar(context).getNav()
      );    
  }
}