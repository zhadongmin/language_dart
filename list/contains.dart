void main() {
  List<String> bikes = [
    'Harley-Davidson',
    'Royal Enfield Hunter',
    'Yamaha R15 V4',
    'Yezdi Roadster',
    'KTM Duke 200 ',
    'Bajaj Pulsar NS200',
  ];
  String key = 'Harley-Davidson';
  if (bikes.contains(key)) {
    print('bikes contains $key');
  }
}
