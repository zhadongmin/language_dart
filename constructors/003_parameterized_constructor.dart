// Creating Class name Shot
// https://www.educative.io/answers/what-are-constructors-in-dart-programming
class Shot {
  // Creating Paramterized Constructor
  Shot(String title) {
    print("This is the $title constructor");
  }
}

void main() {
  //Creating Instance of class
  Shot s1 = new Shot('paramterized');
}
