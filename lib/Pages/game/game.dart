import 'dart:math';

class Game {
  final int _ans;
  int _total = 0;

  List<int> all = [];

  Game() : _ans = Random().nextInt(100) + 1 {
    print("$_ans");
  }

  int doGuess(int num) {
    all.add(num);
    _total++;
    if (num > _ans) {
      return 1;
    } else if (num < _ans) {
      return -1;
    } else {
      return 0;
    }
  }

  int get total {
    return _total;
  }

  String getList() {
    String x = "${all[0]}";
    for (int i = 1; i < all.length; i++) {
      x += "->${all[i]}";
    }
    return x;
  }
}
