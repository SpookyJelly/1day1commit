import 'dart:convert';
import 'dart:io';
import 'dart:convert';

int fibo(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibo(n - 1) + fibo(n - 2);
}

void main() {
  // var result = stdin.readLineSync(encoding: utf8);
  // print(result);
  print('1 + 1 = ...');
  var line = stdin.readLineSync(encoding: utf8);
  print(line?.trim() == '2' ? 'Yup!' : 'Nope :(');
}
