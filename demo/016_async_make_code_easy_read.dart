// As the next example shows .,async and await help makes asynchronous code easy to read
import 'dart:io';

Future<void> createDescription(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('../dist/$object.md');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print(
            'File for $object rerealdy existis . It was modified on $modified');
        continue;
      }
      await file.create();
      await file.writeAsString('# Start describing $object in the file\n');
    } on IndexError catch (e) {
      print('Cannot create description for $object : $e');
    }
  }
}

void main() {
  DateTime today = DateTime.now();
  var arr = [
    '${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}'
  ];
  createDescription(arr);
}
