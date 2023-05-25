void main() {
  List<String> list = [
    'Harley-Davidson',
    'Royal Enfield Hunter',
    'Yamaha R15 V4',
    'Yezdi Roadster',
    'KTM Duke 200 ',
    'Bajaj Pulsar NS200',
  ];
  List<String> actions = list.map((item) => 'I want a $item').toList();
  for (var i = 0; i < actions.length; i++) {
    print(actions[i]);
  }
}
