/*
  This will be the code for the plant scanner screen, but not the 
  functionality behind the scanning.
*/
import 'package:flutter/material.dart';
import 'package:folifind/assets/constants.dart' as Constants;

// for testing only, remove later
class PlantScanner extends StatelessWidget {
  const PlantScanner({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('FOLIFIND'),
        backgroundColor: Constants.appBarBackgroundColor,
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.only(left: 40, top: 40),
                margin: EdgeInsets.only(bottom: 24),
                child: Text(
                  'My\nGreenhouse',
                  textScaler: TextScaler.linear(2.5),
                  style: TextStyle( fontWeight: FontWeight.bold ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 70, bottom: 10),
                  child: SizedBox(child: Text('sort'))
                ),
                Padding(
                  padding: EdgeInsets.only(right: 70, bottom: 10),
                  child: SizedBox(child: Icon(Icons.menu))
                )
              ],
            ),
          
          ],
      ),
    );
  }
}