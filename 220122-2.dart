import 'dart:io';
import 'dart:math';

class ArmstrongNumbers {
  // Put your code here
  String inputNumber;

// 클래스 생성자
  ArmstrongNumbers(String inputNumber) : this.inputNumber = inputNumber;

  bool get isArmstrongNumber {
    int length = this.inputNumber.length;
    List<String> numberList = this.inputNumber.split('');
    num powerSum = numberList.fold(0, (i, j) => i + pow(int.parse(j), length));
    int powerSumInt = powerSum.toInt();
    return powerSumInt == int.parse(inputNumber) ? true : false;
  }
}

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    ArmstrongNumbers armstrongNumbers = new ArmstrongNumbers(input);
    print(armstrongNumbers.isArmstrongNumber);
  }
}
