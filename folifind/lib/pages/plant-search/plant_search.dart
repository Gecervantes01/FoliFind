import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:folifind/assets/constants.dart' as Constants;
import 'package:folifind/models/plant_data.dart';
import 'package:folifind/pages/plant-search/plant_searchBar.dart';
import 'package:http/http.dart' as http;

/// Creates the Plant search page
/// 
/// @author: Giovan Cervantes
/// @version: 1.0
class PlantSearch extends StatefulWidget {
  const PlantSearch({super.key});

  @override
  PlantSearchState createState() => PlantSearchState();
}

class PlantSearchState extends State<PlantSearch> {
  List<PlantData> plants = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    // fetch data from API
    getPlants();
  }

  Future<void> getPlants() async {
    Map<String, String> headers = {"Access-Control-Origin" : "*", "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE", "Access-Control-Allow-Headers": "Origin, X-Requested-With,Content-Type,Accept" };

    try {
      var url = Uri.https('trefle.io', '/api/v1/plants?token=xsSBiz7iRzfZEIiZIlJiKeU9JlxKVH3QIKL4rHlYvQg');
      var response = await http.get(url, headers: headers);
      var jsonData = jsonDecode(response.body);
      List<PlantData> loadedPlants = [];

      for(var eachPlant in jsonData['data']) {
        final plant = PlantData(plantName: eachPlant['common_name'], plantCycle: eachPlant['year']);
        loadedPlants.add(plant);
      }

      setState(() {
        plants = loadedPlants;
        isLoaded = true;
      });
    } catch(e) {
      print('Error fetching plants: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Constants.appBarBackgroundColor,
        ),
      body: Column(
        children: [
          Container(
              // width: MediaQuery.of(context).size.width * 0.90,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 60),
              child: SearchBar(
                hintText: 'Search for plants',
                leading: const Icon(Icons.search),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.90,
                  minHeight: 50,
                  ),
                onTap:() {
                  showSearch(
                    context: context, 
                    delegate: PlantSearchBar()
                  );
                },
              ),
            ),
            FutureBuilder(
              future: getPlants(), 
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if(snapshot.hasError) {
                    return Center(child: Text('Error loading plants'));
                  } else {
                    if(isLoaded) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: plants.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(plants[index].plantName)
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(child: Text('No Plants'));
                    }
                  }
                  
                }
              }
            ),
        ],
      ) 
    );
  }
}