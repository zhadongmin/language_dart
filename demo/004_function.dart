// 函数
var func = '函数';

//建议为给每个函数的参数以及返回值都指定类型

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;

  return fibonacci(n - 1) + fibonacci(n - 2);
}

int result = fibonacci(20);

void main() {
  for (int n = 0; n < 20; n++) {
    print('$n 的 fibonacci 是 ${fibonacci(n)}');
  }
}
