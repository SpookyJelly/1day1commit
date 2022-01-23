import "dart:io";

class Isogram {
  // Put your code here
  String isogram;
  List<String> isogramArr;
  // {} 이 아니라 : 으로 표기해야지 초기화가?
  Isogram(
    String isogram,
  )   : this.isogram = isogram,
        this.isogramArr =
            isogram.replaceAll('-', '').replaceAll(' ', '').split('');

  bool isIso() {
    print(this.isogramArr);
    for (int i = 0; i < this.isogramArr.length - 1; i++) {
      for (int j = i + 1; j < this.isogramArr.length; j++) {
        if (this.isogramArr[i] == this.isogramArr[j]) {
          return false;
        }
      }
    }
    return true;
  }
}

void main() {
  while (true) {
    String? isogram = stdin.readLineSync();
    if (isogram != '' && isogram != null) {
      Isogram input = Isogram(isogram);
      print(input.isIso());
    } else {
      break;
    }
  }
}
