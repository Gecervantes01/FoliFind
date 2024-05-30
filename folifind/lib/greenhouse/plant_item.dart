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
class PlantItem {
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(246, 233, 233, 0.612),
          title: Text("Plant name")
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Greenhouse")
            ],
          ),
        )
      );
    }
}