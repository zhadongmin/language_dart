import '002_variables.dart';
import '008_classes.dart';

//Dart has no interface keyword .instead ,all classes implicitly define an interface
// Therefore you can implement any class
class MockSpaceship implements Spacecraft {
  MockSpaceship(this.name, this.launchDate) {}
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;

  @override
  void describe() {
    // TODO: implement describe
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('$name Lanuched in $launchYear, $years years ago');
    } else {
      print('UnLaunched');
    }
  }

  MockSpaceship.unlanuched(String name) : this(name, null);
}

void main() {
  print('Interface');

  MockSpaceship fake = MockSpaceship('fake', DateTime(1949));

  fake.describe();

  MockSpaceship fake3 = MockSpaceship.unlanuched('fake');

  fake3.describe();
}
