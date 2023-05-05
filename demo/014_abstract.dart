//abstract

// You can create an abstract classes to be extended (or implemented ) by a concrete class.
// Abstract classes can contain abstract methods (withe empty bodies)
abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print("========");
    describe();
    print("========");
  }
}

class D extends Describable {
  D();

  @override
  void describe() {
    // TODO: implement describe
    print('overide describe');
  }
}

void main() {
  // var a = Describable();
  var a = D();
  a.describeWithEmphasis();
}
