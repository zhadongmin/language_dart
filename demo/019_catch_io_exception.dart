// catch exception

import 'dart:io';

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      print(object);
      var description = await File('../dist/$object.md').readAsString();
      print('$description');
    }
  } on IOException catch (e) {
    //能否不中断这里的操作
    print('Could not describe object: $e');
  } finally {
    // TODO: ?
    print('done');
    flybyObjects.clear();
  }
}

void main() {
  var flybyObjects = ['2023-05-04', '2023-05-05', '2023-05-06'];
  //TODO ? 无输出
  describeFlybyObjects(flybyObjects);
}
