class DifferenceOfSquares {
  // Put your code here

  int squareOfSum(int input) {
    int result = 0;
    for (int i = 0; i <= input; i++) {
      result += i;
    }

    return result * result;
  }

  int sumOfSquares(int input) {
    int result = 0;
    for (int i = 0; i <= input; i++) {
      result += i * i;
    }
    return result;
  }

  int differenceOfSquares(int input) {
    int squareSumResult = squareOfSum(input);
    int sumSquareResult = sumOfSquares(input);
    return squareSumResult - sumSquareResult;
  }
}
