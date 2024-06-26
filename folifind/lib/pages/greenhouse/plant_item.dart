import 'package:flutter/material.dart';
import 'package:folifind/assets/constants.dart' as Constants;

/* 
  This class is going to represent a plant item, which is visible within 
  the "Greenhouse". 
  Each plant item is going to include:
  - Plant Name
  - Image of the plant
  Relevant arguement data will only be retreived when user chooses to add
  a plant to their greenhouse.

  @Author: Giovan Cervantes
  @Version: 1.0
*/
class PlantItem extends StatelessWidget{
  const PlantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          width: Constants.plantItemSize,
          height: Constants.plantItemSize,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Constants.plantItemBorderColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: Constants.plantItemBackgroundColor,
            ),
          ),
          Text('Plant Name'),
      ]
    );
  }
}

