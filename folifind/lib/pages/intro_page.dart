import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intro page'),),
      body: Center(
        child: ElevatedButton(
        child: const Text("Go to Greenhouse"),
        onPressed: () {
          Navigator.pushNamed(context, '/greenhouse');
        },
        ),
        ),
    );
  }
}