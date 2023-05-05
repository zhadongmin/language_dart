//Inheritance
import '008_classes.dart';

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.name, super.launchDate, this.altitude);

  @override
  void describe() {
    // TODO: implement describe
    super.describe();
    print(altitude);
  }
}

void main() {
  final Orbiter orbiter = Orbiter('we III', DateTime(1992, 3, 11), 200.0);
  print(orbiter.name);
  orbiter.describe();
}
