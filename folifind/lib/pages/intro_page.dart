import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intro page'),), // top banner
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (int index) {
          
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home)
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add)
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.add_a_photo)
      //     ),
      //   ],
      // )
      body:
      Column(
        children: <Widget>[
          ElevatedButton(
            child: const Text("Home"),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ElevatedButton(
            child: const Text("Greenhouse"),
            onPressed: () {
              Navigator.pushNamed(context, '/greenhouse');
            },
          ),
          ElevatedButton(
            child: const Text("Scanner"),
            onPressed: () {
              Navigator.pushNamed(context, '/scanner');
            },
          )
        ]
        ),
    );
  }
}