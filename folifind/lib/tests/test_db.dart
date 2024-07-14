import 'package:folifind/tests/boxes.dart';

class TestDB {

  static int size = 0;

  static bool addPlant(String plant) {
    testBox.add(plant);
    if(testBox.length != (size + 1)) {
      return false;
    }

    // if the plant was successfully added
    size++;
    return true;
  }

  static bool removePlant(String plant) {
    for(int i = 0; i < testBox.length; i++) {
      // if the plant was removed successfully
      if(testBox.get(i) == plant) {
        testBox.delete(i);
        size--;
        return true;
      }
    }
    return false;
  }

  static bool clearAll() {
    for(int i = 0; i < testBox.length; i++) {
      testBox.delete(i);
      size--;
    }
    if(testBox.length != 0) {
      return false;
    }

    return true;
  }
}