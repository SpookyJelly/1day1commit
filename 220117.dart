// Exercism Two-fer
import "dart:io";

String TwoFer(String name) {
  return 'One for ${name}, one for me';
}

void main() {
  var name = stdin.readLineSync() ?? 'you';
  var result = TwoFer(name);
  print(result);
}
