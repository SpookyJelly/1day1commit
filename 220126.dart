// exercism
class Bob {
  // Put your code here
  String response(String speak) {
    RegExp regExp = RegExp(r'/[A-Z]/');
    int speakLen = speak.length;

    if (regExp.allMatches(speak) == true && speak[speakLen - 1] == '?') {
      return 'Calm down, I know what I\'m doing!';
    } else if (speak[speakLen - 1] == '?') {
      return 'Sure.';
    } else if (regExp.allMatches(speak) == true) {
      return 'Woha, chill out!';
    } else {
      return 'Whatever.';
    }
  }
}
