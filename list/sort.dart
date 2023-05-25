void main() {
  List<String> bikes = [
    'Harley-Davidson',
    'Royal Enfield Hunter',
    'Yamaha R15 V4',
    'Yezdi Roadster',
    'KTM Duke 200 ',
    'Bajaj Pulsar NS200',
  ];
  print('Before Sort $bikes');
  // bikes.sort((a, b) => a.compareTo(b));
  bikes.sort((a, b) => b.compareTo(a));
  print('After Sort $bikes');
}
