// Creating Class Person
// https://www.educative.io/answers/what-are-constructors-in-dart-programming
class Person {
  //Creating parameterized Constructor
  Person.detailConstructor(String name) {
    print("$name lives on the highland");
  }
  //Creating default constructor
  Person.detailConStructor2() {
    print("Maria is a FLutter developer");
  }
}

void main() {
  Person I = new Person.detailConstructor('zdm');
  Person Who = new Person.detailConStructor2();
}
