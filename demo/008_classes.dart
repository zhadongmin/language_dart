// classes

class Spacecraft {
  String name;
  DateTime? launchDate;

// read-only non-final property
  int? get launchYear => launchDate?.year;

// Constructor with syntactic sugar for assignment to members
  Spacecraft(
    this.name,
    this.launchDate,
  ) {
    // Initialization code goes here
  }
  // Named Constructor that forwards to the default one
  Spacecraft.unlanuched(String name) : this(name, null);

  //Method
  void describe() {
    print('Spacecraft $name');
    //Type promotion doesn't work on getters
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  print('Classes');
  var voyager = Spacecraft('voyager I', DateTime(1996, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlanuched('voyager III');
  voyager3.describe();
}
