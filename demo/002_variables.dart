var name = 'Zha Dongmin';
var year = 2023;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Urans', 'Nepture'];
var images = {
  "tags": ['satur'],
  "url": '//path/to/saturn.jpg'
};

void main() {
  // name = 123;
  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(images);
}

// 虽然Dart 是代码类型安全的语言，但是它支持类型推断。所以大多数变量不需要显式的指定其类型。