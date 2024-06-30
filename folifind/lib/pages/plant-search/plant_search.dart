import 'package:flutter/material.dart';
import 'package:folifind/assets/constants.dart' as Constants;
import 'package:folifind/models/plant_data.dart';
import 'package:folifind/services/remote_services.dart';

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
  List<PlantData>? plantData;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    // fetch data from API
    getData();
  }

  getData() async {
    plantData = await RemoteService().getPlantData();
    if(plantData != null) {
      setState( () {
        isLoaded = true;
      });
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
                // onTap:() {
                //   showSearch(
                //     context: context, 
                //     delegate: CustomSearchDelegate()
                //   );
                // },
              ),
            ),
            Visibility(
              visible: isLoaded,
              replacement: const Text('No plants'),
              child:  ListView.builder(
                  itemCount: plantData?.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(plantData![index].data.toString()),
                    );
                  }
                ),
              ),
          
        ],
      )
            
      );
  }
}

// class CustomSearchDelegate extends SearchDelegate {

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: Icon(Icons.clear),
//         ),
//     ];
//   }

//    @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: Icon(Icons.arrow_back),
//     );
//   }
 
//   // third overwrite to show query result
//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var plant in plantData) {
//       if (plant.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(plant);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
 
//   // last overwrite to show the 
//   // querying process at the runtime
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var fruit in searchTerms) {
//       if (fruit.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(fruit);
//       }
//     }
//     return ListView.builder(
//       itemCount: matchQuery.length,
//       itemBuilder: (context, index) {
//         var result = matchQuery[index];
//         return ListTile(
//           title: Text(result),
//         );
//       },
//     );
//   }
// }
