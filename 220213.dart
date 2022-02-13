// ignore_for_file: unused_local_variable
class Luhn {
  // Put your code here
  bool valid(String cardNumber) {
    String blankRemovedNumber = cardNumber.replaceAll(' ', '');
    RegExp Rg = RegExp((r"([^\d])"));
    bool isContainsOther = blankRemovedNumber.contains(Rg);
    if (isContainsOther) {
      return false;
    }
    List<String> cardNumberList = blankRemovedNumber.split('');
    if (cardNumberList.length == 1) {
      return false;
    } else {
      Iterable<int> convertedList = cardNumberList.asMap().entries.map((entry) {
        int key = cardNumberList.length - entry.key;
        String value = entry.value;
        // print(value);
        if (key % 2 == 0) {
          int doubleValue = (int.parse(value)) * 2;
          if (doubleValue > 9) {
            doubleValue -= 9;
          }
          return doubleValue;
        } else {
          return int.parse(value);
        }
      });
      int total = convertedList.reduce((value, element) => value + element);
      if (total % 10 == 0) {
        return true;
      } else {
        return false;
      }
    }
  }
}
