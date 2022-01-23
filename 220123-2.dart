class Node {
  late final int _data;
  String get data => _data.toString();
  // 자기 자신의 클래스 명으로 프라이빗 변수 넣으면 Node 클래스의 인스턴스는 left, right 프롭을 가질 수 있다.
  Node? left;
  Node? right;
  // 중간에 콧수염은 뭔데
  Node(String d, {Node? this.left, Node? this.right}) {
    _data = int.parse(d);
  }
  void insert(String d) {
    right = int.parse(d) > _data ? ((right?..insert(d)) ?? Node(d)) : right;
    left = int.parse(d) <= _data
        ? ((left?..insert(d)) ?? Node(d))
        : left; // 비교해서 내려가는건 알겠는데..
    // 나머지 원리를 보르겠다.
  }

  List<String> list() => [...left?.list() ?? [], data, ...right?.list() ?? []];
}

class BinarySearchTree {
  late Node root; //late keyword?
  List<String> get sortedData => root.list(); // get Keyword?
  BinarySearchTree(String s) {
    root = Node(s);
  }
  void insert(String d) => root.insert(d);
}
