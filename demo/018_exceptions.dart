// Exceptions https://dart.dev/language#exceptions

import '008_classes.dart';

class PioltedCraft extends Spacecraft {
  int astronauts;

  void describeCrew() {
    print("Number of astronauts: $astronauts");
  }

  void launch() {
    if (astronauts == 0) {
      // To raise an exception, use throw:
      throw StateError('No astronsuts');
    }
    print('$astronauts Astoronauts launch the Craft');
  }

  PioltedCraft(
    this.astronauts,
    super.name,
    super.lanuchDate,
  );
}

void main() {
  var ChangE = PioltedCraft(2, '嫦娥', DateTime(2012));
  ChangE.describe();
  ChangE.describeCrew();
  ChangE.launch();
  var ChangE2 = PioltedCraft(0, '嫦娥2号', DateTime(2012));
  ChangE2.describe();
  ChangE2.describeCrew();
  // To catch an exception, use a try statement with on or catch (or both):
  try {
    ChangE2.launch();
  } on StateError catch (e) {
    print('catched the state error $e');
  }
}
