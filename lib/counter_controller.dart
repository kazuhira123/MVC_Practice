import 'package:flutter/material.dart';
import 'package:mvc_practice/counter.dart';

class CounterController {
  const CounterController(Counter counter) : _counter = counter;

  //CounterControllerが保持・操作すべきCounterモデル
  final Counter _counter;

  //カウントアップボタンを押す
  void countUp() => _counter.increment();

  //リストに追加ボタンを押す
  //合計値が５の倍数であった場合はにはSnackBarを表示する
  void addToList(BuildContext context) {
    _counter.append();
    final total = _counter.calculateTotal();
    if (_counter.isTotalMultipleOfFive()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('合計値($total)は５の倍数です！')));
    }
  }

  //クリアボタンを押す
  void clear() => _counter.clear();
}
