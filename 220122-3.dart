// Put your code here
import 'dart:io';

// solved with recursive function than simple for-in loop
int recurTotalCalcultor(String digit, int counter) {
  if (counter == 1) {
    return int.parse(digit[0]) * 1;
  } else {
    String currentDigit = digit[counter - 1];
    int numElem = currentDigit == 'X' ? 10 : int.parse(currentDigit);
    return numElem * counter + recurTotalCalcultor(digit, counter - 1);
  }
}

bool isVaild(String ISBN_10) {
  ISBN_10 = ISBN_10.replaceAll('-', '');
  final int result = recurTotalCalcultor(ISBN_10, 10) % 11;
  return result == 0  ;
}

void main() {
  String? ISBN_10 = stdin.readLineSync();
  if (ISBN_10 != null) {
    print(isVaild(ISBN_10));
  }
}