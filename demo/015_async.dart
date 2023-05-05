// Async https://dart.dev/language#async

const onSecond = Duration(seconds: 1);

// Avoid callback hell and make your code much readable by using saync and await
Future<void> printWithDelay(String message) async {
  await Future.delayed(onSecond);
  print(message);
}

// The method above is equivalent to
Future<void> printWithDelayM2(String message) {
  return Future.delayed(onSecond).then((_) {
    print(message);
  });
}

void main() {
  print('============');
  printWithDelay('message');
  print('============');
  print('-------');

  printWithDelayM2('message2');
  print('-------');
}
