import 'package:flutter/material.dart';
import 'package:folifind/pages/greenhouse/plant_item.dart';
import 'package:folifind/assets/constants.dart' as Constants;

/// Creates the Greenhouse page
class GreenHouse extends StatelessWidget {
  const GreenHouse({super.key});
  // ignore: constant_identifier_names
  static const double PADDING_X = 30;
  static const double PADDING_Y = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FOLIFIND'),
        backgroundColor: Constants.appBarBackgroundColor,
        ),
      body: 
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40, 
                  top: 20
                ),
                child: Text(
                  textScaler: TextScaler.linear(2.5),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  'My\nGreenhouse',
                ),
                
                ),
            ),
            Center(
            heightFactor: 1.15,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 70, bottom: 10),
                      child: SizedBox(child: Text('sort'),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 70, bottom: 10),
                      child: SizedBox(child: Icon(Icons.menu))
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: PlantItem(),),
                    SizedBox(width: PADDING_X),
                    Flexible(child: PlantItem(),),
                  ],
                ),
                SizedBox(height: PADDING_Y),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: PlantItem(),),
                    SizedBox(width: PADDING_X),
                    Flexible(child: PlantItem(),),
                  ],
                ),
              ],
              ),
            ),
          ],
        )
      );
  }
}