// async https://dart.dev/language#async
// You can also use async * , which give you a nice ,readable way to build streams
import '008_classes.dart';
import '015_async.dart';

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(onSecond);
    yield '${craft.name} flies  by $object';
  }
}

void main() {
  var voyager = Spacecraft('voyager', DateTime(1911, 5, 4));
  var objects = ['Paris', 'Shanghai', 'Beijing', 'Dalian'];
  report(voyager, objects);
  // TODO hanle Stream
}
