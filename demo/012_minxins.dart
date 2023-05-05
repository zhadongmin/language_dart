import '008_classes.dart';

// mixins are a way of reusing code in multiple hierarchies The follwing is aminxin declaration
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print("Number of astronauts: $astronauts");
  }
}

//TO add a mixin's to a class just extend the class with the minxin
class PioltedCraft extends Spacecraft with Piloted {
  // PioltedCraft now has the astronauts fields as well as the describeCrew;
  PioltedCraft(super.name, super.lanuchDate);
}

void main() {
  final PioltedCraft craft = PioltedCraft('we III', DateTime(1992, 3, 11));
  // print(craft.name);
  craft.describe();
  craft.describeCrew();
}
