class BeerSong {
  // Put your code here
  String getWord(int beerBottle) {
    if (beerBottle > 1) {
      return '${beerBottle} bottles of beer';
    } else if (beerBottle == 1) {
      return '${beerBottle} bottle of beer';
    } else if (beerBottle == 0) {
      return 'No more bottles of beer';
    }
    return '';
  }

  List<String> recite(int beerBottle, int repeatCnt) {
    List<String> result = [];
    while (repeatCnt > 0) {
      late String firstLyric;
      late String secondLyric;
      String lineBreak = '';
      if (beerBottle == 0 && repeatCnt > 0) {
        firstLyric =
            '${getWord(beerBottle)} on the wall, ${getWord(beerBottle).toLowerCase()}.';
        beerBottle = 99;
        secondLyric =
            'Go to the store and buy some more, ${getWord(beerBottle)} on the wall.';
      } else {
        firstLyric =
            "${getWord(beerBottle)} on the wall, ${getWord(beerBottle)}.";
        beerBottle -= 1;
        secondLyric =
            'Take ${beerBottle == 0 ? 'it' : 'one'} down and pass it around, ${getWord(beerBottle).toLowerCase()} on the wall.';
      }
      result.add(firstLyric);
      result.add(secondLyric);
      repeatCnt -= 1;
      if (repeatCnt > 0) {
        result.add(lineBreak);
      }
    }
    return result;
  }
}
