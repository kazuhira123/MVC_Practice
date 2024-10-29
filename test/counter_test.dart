import 'package:flutter_test/flutter_test.dart';
import 'package:mvc_practice/counter.dart';

void main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  group('Counter', () {
    test('初期値は0である', () {
      expect(counter.count, 0);
    });

    test('値が正しくインクリメントされる', () {
      counter.increment();
      expect(counter.count, 1);
    });

    test('値がリストに正しく追加される', () {
      counter.append();
      expect(counter.counts.length, 1);
      expect(counter.counts[0], 0);

      counter.increment();
      counter.append();
      expect(counter.counts.length, 2);
      expect(counter.counts[1], 1);
    });

    test('値とリストが正しくクリアされる', () {
      counter.increment();
      counter.append();
      counter.clear();
      expect(counter.count, 0);
      expect(counter.counts.isEmpty, true);
    });

    test('リストの値が正しく合計される', () {
      counter.increment();
      counter.append();
      counter.increment();
      counter.append();
      expect(counter.calculateTotal(), 3);
    });

    test('リストの値の合計が５の倍数である判定が正しくされる', () {
      counter.increment();
      counter.increment();
      counter.append();
      expect(counter.isTotalMultipleOfFive(), false);
      counter.increment();
      counter.append();
      expect(counter.isTotalMultipleOfFive(), true);
    });
  });
}
