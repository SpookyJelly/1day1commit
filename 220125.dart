class SpaceAge {
  // Put your code here

// required <-- 필수 인자를 지칭, named params와 같이 쑬 수 있다.
  double? age({required String planet, required int seconds}) {
    Map<String, double> _ageMap = {
      'Earth': 31557600,
      'Mercury': 0.2408467,
      'Venus': 0.61519726,
      'Mars': 1.8808158,
      'Jupiter': 11.862615,
      'Saturn': 29.447498,
      'Uranus': 84.016846,
      'Neptune': 164.79132
    };

    double? convert = _ageMap[planet];
    if (convert != null) {
      return (double.parse((seconds / convert).toStringAsFixed(2)));
    }
  }
}
