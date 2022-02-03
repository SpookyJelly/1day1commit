//exercism dart Hamming

class Hamming {
  // Put your code here

  int distance(String A, String B) {
    int _distance = 0; // 메서드 밖에, 그러니까 프로퍼티로 존재하면 초기화가 되지 않는다
    int lenA = A.length;
    int lenB = B.length;
    if (lenA == 0 && lenB == 0) {
      return 0;
    } else if ((A == '' || B == '')) {
      throw ArgumentError('no strand must be empty');
    } else if (lenA != lenB) {
      throw ArgumentError(
          'left and right strands must be of equal length'); // ArgumentError?
    }

    for (int i = 0; i < lenA; i++) {
      if (A[i] != B[i]) {
        _distance++;
      }
    }

    return _distance;
  }
}
