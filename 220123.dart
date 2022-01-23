// import "dart:io";

class Isogram {
  // Put your code here
  // String isogram;
  // List<String> isogramArr;
  // // {} 이 아니라 : 으로 표기해야지 초기화가?
  // Isogram(
  //   String isogram,
  // )   : this.isogram = isogram,
  //       this.isogramArr =
  //           isogram.replaceAll('-', '').replaceAll(' ', '').split('');

  bool isIsogram(String isogram) {
    // print(this.isogramArr);
    List<String> isogramArr =
        isogram.replaceAll('-', '').replaceAll(' ', '').split('');

    for (int i = 0; i < isogramArr.length - 1; i++) {
      for (int j = i + 1; j < isogramArr.length; j++) {
        if (isogramArr[i] == isogramArr[j]) {
          return false;
        }
      }
    }
    return true;
  }
}

// void main() {
//   // while (true) {
//   //   String? isogram = stdin.readLineSync();
//   //   if (isogram != '' && isogram != null) {
//   //     Isogram input = Isogram();
//   //     print(input.isIso());
//   //   } else {
//   //     break;
//   //   }
//   // }
// }
