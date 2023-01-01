import 'dart:math';
class Paper {
  List _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List _LordsOfPaper = ["Lord", "Queen", "King"];
  List _typesOfPaper = ["RedHeart", "blackHeart", "RedComa", "BlackComa"];
  List _WholeList = [];
  List<String> mainPaperList = [];
  Paper() {
    _WholeList += _numbers.sublist(0);
    _WholeList += _LordsOfPaper.sublist(0);
    for (int i = 0; i < 52; i++) {
      mainPaperList.add("${_WholeList[i % 13]} of ${_typesOfPaper[i % 4]}");
    }
    mainPaperList.shuffle();
  }

  //optional methods
  void swap(var r1, var r2) {
    var t = r1;
    r1 = r2;
    r2 = t;
  }
  void shuffle(List elements) {
    Random r = Random();
    for (int i = 0; i < 100; i++) {
      swap(elements[r.nextInt(elements.length)], r.nextInt(elements.length));
    }
  }
}