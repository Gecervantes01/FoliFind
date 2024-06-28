import 'package:flutter/material.dart';
import 'package:folifind/pages/greenhouse/plant_item.dart';
import 'package:folifind/assets/constants.dart' as Constants;
import 'package:folifind/tests/test_list.dart';

/// Creates the Greenhouse page
/// 
/// @author: Giovan Cervantes
/// @version: 1.0
class GreenHouse extends StatelessWidget {
  const GreenHouse({super.key});

  @override
  Widget build(BuildContext context) {

    // Test data
    List<String> randomPlants = TestList().randomPlants();

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
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 6,
                  childAspectRatio: 1,
                  ),
                itemCount: randomPlants.length,
                itemBuilder: (context, index) {
                  String plantName = randomPlants[index];
                  return PlantItem(plantName: plantName);
                },
              ),
            ),
          ],
      ),
    );
  }
}