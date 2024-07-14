import 'package:flutter/material.dart';
import 'package:folifind/assets/navbar.dart';
import 'package:folifind/pages/greenhouse/plant_item.dart';
import 'package:folifind/assets/constants.dart' as Constants;
import 'package:folifind/tests/boxes.dart';
import 'package:folifind/tests/test_db.dart';

/// Creates the Greenhouse page
/// 
/// @author: Giovan Cervantes
/// @version: 1.0
class GreenHouse extends StatelessWidget {
  const GreenHouse({super.key});

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
            displayPlants()
          ],
      ),
      bottomNavigationBar: Navbar(context).getNav(),
    );
  }

  static Widget displayPlants() {
    if(testBox.length > 0) {
      return Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 6,
            childAspectRatio: 1,
            ),
          itemCount: testBox.length,
          itemBuilder: (context, index) {
            // Creates and returns a PlantItem Widget using the data stored in testBox
            return PlantItem(plantName: testBox.getAt(index)); 
          },
        ),
      );
    }

    return Center(child: Text('Your greenhouse is empty!'));
  }
}