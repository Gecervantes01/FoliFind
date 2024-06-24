import 'package:flutter/material.dart';

/* 
  This class is going to represent a plant item, which is visible within 
  the "Greenhouse". 
  Each plant item is going to include:
  - Plant Name
  - Image of the plant
  
  @Author: Giovan Cervantes
  @Version: 1.0
*/
class PlantItem extends StatelessWidget{
  const PlantItem({super.key});

  // ignore: constant_identifier_names
  static const double SIZE = 160;
  
  @override
  Widget build(BuildContext context) {
    return Container (
      decoration: BoxDecoration(

      ),
            child: Container(
              width: SIZE,
              height: SIZE,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Color.fromARGB(255, 192, 192, 192),
                ),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Color.fromARGB(255, 247, 247, 247),
              ),
            ),
    );
  }
}

