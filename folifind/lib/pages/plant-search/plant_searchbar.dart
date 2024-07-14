import 'package:flutter/material.dart';
import 'package:folifind/tests/test_list.dart';
import 'package:folifind/tests/test_db.dart';

class PlantSearchBar extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
        ),
    ];
  }

   @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }
 
  /*
    TODO:
    - Create a seperate method for adding plants to the testBox
    - Provide feedback to the user when plant is successfully saved
  */
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    // loops through all plants in the test data
    for (var plant in TestList.plantList) {
      if (plant.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(plant);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          trailing: IconButton(
            onPressed: () {
              // adds desired plant to the testBox 
              TestDB.addPlant(result);
            },
            icon: Icon(Icons.add),
            ),
        );
      },
    );
  }
 
 /*
    TODO:
    - Want to add in a recent searches feature
 */
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var plant in TestList.plantList) {
      if (plant.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(plant);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}