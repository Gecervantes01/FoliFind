import 'package:folifind/models/plant_data.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<PlantData>?> getPlantData() async {
    var client = http.Client();

    var uri = Uri.parse('https://trefle.io/api/v1/plants?token=xsSBiz7iRzfZEIiZIlJiKeU9JlxKVH3QIKL4rHlYvQg');
    var response = await client.get(uri);
    var json = response.body;
    return plantDataFromJson(json);
    // if(response.statusCode == 200) {
    //   var json = response.body;
    //   return plantDataFromJson(json);
    // }
  }
}