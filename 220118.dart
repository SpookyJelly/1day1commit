//exercism leap
import 'dart:io';

class Leap {
  // Put your code here
  bool isLeapYear(int number) {
    if (number % 4 == 0 && number % 100 != 0) {
      return true;
    } else if (number % 100 == 0 && number % 400 == 0) {
      return true;
    }
    return false;
  }
}

void main() {
  Leap leap = new Leap();
  String? input = stdin.readLineSync();
  if (input != null) {
    int n = int.parse(input);
    print(leap.isLeapYear(n));
  }
}
