var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

void main() {
  var result = flybyObjects.where((name) => name.contains('turn'));
  print(result);
  result.forEach(print);
}
