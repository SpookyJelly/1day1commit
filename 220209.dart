DateTime add(final DateTime birthDate) {
  //DateTime 객체에 add 메서드로 Duration을 전달할 수 있다.
  // 놀랍게도 ADD 메서드는 현재 dateTime (this)와 Duration instance를 더한 새로운 DateTime 객체를 반납한다.
  // 한편, Duration 생성자는 내부에 있는 파람을 죄다 더한 Duration instance를 반환한다.
  // 이 둘의 콜라보로 깔끔하게 해결 가능. (js와 차원이 다르다)
  return birthDate.add(Duration(milliseconds: 1000000000000));
}
