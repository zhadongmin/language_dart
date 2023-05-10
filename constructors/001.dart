// https://www.educative.io/answers/what-are-constructors-in-dart-programming
class Shot {
  late String shot1;

  Shot() {
    print("Constructor was called");
  }
  void display() {
    print('This is a shot on $shot1');
  }
}

void main() {
  Shot shot = new Shot();
  shot.shot1 = "Constructor in Dart";
  shot.display();
}
