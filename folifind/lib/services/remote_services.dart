import 'package:folifind/models/plant_data.dart';
import 'package:http/http.dart' as http;

// class RemoteService {
//   Future<List<PlantData>?> getPlantData() async {
// //     var client = http.Client();

// //     var request = http.Request("", Uri.parse('perenual.com/api/species-list?key=sk-LLVu668c8230f01246182'));
// //     http.StreamedResponse response = await request.send();
// //     return plantDataFromJson(response.stream.bytesToString() as String);
// //     // if(response.statusCode == 200) {
// //     //   var json = response.body;
// //     //   return plantDataFromJson(json);
// //     // }
// //   }
// }