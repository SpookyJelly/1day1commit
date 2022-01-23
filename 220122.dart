//exercism scrabble_score

// Put your code here
import 'dart:io';

int scoreDist(String letter) {
  final List<String> scoreBoardArrOne = [
    'A',
    'E',
    'I',
    'O',
    'U',
    'L',
    'N',
    'R',
    'S',
    'T'
  ];
  final List<String> scoreBoardArrTwo = ['D', 'G'];
  final List<String> scoreBoardArrThree = ['B', 'C', 'M', 'P'];
  final List<String> scoreBoardArrFour = ['F', 'H', 'V', 'W', 'Y'];
  final List<String> scoreBoardArrFive = ['K'];
  final List<String> scoreBoardArrEight = ['J', 'X'];
  final List<String> scoreBoardArrTen = ['Q', 'Z'];

  if (scoreBoardArrOne.contains(letter)) {
    return 1;
  } else if (scoreBoardArrTwo.contains(letter)) {
    return 2;
  } else if (scoreBoardArrThree.contains(letter)) {
    return 3;
  } else if (scoreBoardArrFour.contains(letter)) {
    return 4;
  } else if (scoreBoardArrFive.contains(letter)) {
    return 5;
  } else if (scoreBoardArrEight.contains(letter)) {
    return 8;
  } else if (scoreBoardArrTen.contains(letter)) {
    return 10;
  } else {
    // exceptions
    throw new FormatException("input includes non-alphabet");
  }
}

void main() {
  String? word = stdin.readLineSync();
  if (word != null) {
    List<String> letters = word.split('');

// 화살표 함수가 없다? 좀더 제한적인 상황에만 사용할수 있는거 같은데?

    int total = letters.fold(0, (int i, String j) {
      String letter = j.toUpperCase();
      int score = scoreDist(letter);
      return i + score;
    });

    print('$total');
  }
}
