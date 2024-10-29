class Counter {
  //カウント値
  int _count = 0;

  //カウント値のリスト
  final List<int> _counts = [];

  //カウント値に1を加算する
  void increment() {
    _count++;
  }

  //カウント値をリストに追加する
  void append() {
    _counts.add(_count);
  }

  //カウント値とリストをクリアする
  void clear() {
    _count = 0;
    _counts.clear();
  }

  //カウント値のリストの合計を計算する
  int calculateTotal() {
    return _counts.fold(0, (a, b) => a + b);
  }

  //カウント値の合計が５の倍数であるかを判定する
  bool isTotalMultipleOfFive() => calculateTotal() % 5 == 0;
}
