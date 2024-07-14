import 'package:flutter/material.dart';
import 'package:folifind/assets/constants.dart' as Constants;
import 'package:folifind/tests/test_db.dart';

///
/// This class is going to represent a plant item, which is visible within 
/// the "Greenhouse". 
/// Each plant item is going to include:
/// - Plant Name
/// - Image of the plant
/// Relevant arguement data will only be retreived when user chooses to add
/// a plant to their greenhouse.
/// 
/// @Author: Giovan Cervantes
/// @Version: 1.0

class PlantItem extends StatelessWidget {
  final String plantName;

  /// Constructor which currently requires name of the plant
  PlantItem({required this.plantName});

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onLongPress: () {
        TestDB.removePlant(plantName);
      },
      child: Column(
        children:[
          Container(
            width: MediaQuery.of(context).size.width * Constants.plantItemSize,
            height: MediaQuery.of(context).size.width * Constants.plantItemSize,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Constants.plantItemBorderColor,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Constants.plantItemBackgroundColor,
              ),
            ),
            Text(plantName),
        ] 
      ),
    );
  }
}

