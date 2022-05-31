/// 関数のサンプルコード
/// 関数はまとまった処理をまとめて１つの機能として提供することができます。
/// 関数にキレイにまとめられたコードは可読性が高く、
/// バグが発生した際にもコード修正を最小限に抑えることができるなど、
/// たくさんの利点があります。

/// ２つの数値の合計を求める
int sum(int num1, int num2) {
  return num1 + num2;
}

/// 平均値を求める
double ave(List<int> nums) {
  int total = 0;
  nums.forEach((num) {
    // += で 左辺に右辺を加算したものを左辺に代入する
    total += num;
    // total = total + num;
    // sum 関数を使いまわすことも可能！
    // total = sum(total, num);
  });

  return total / nums.length;
}

void main() {
  print("== sum ==");
  print(sum(10, 5));
  print(sum(215, 300));

  print("== ave ==");
  print(ave([10, 20, 10, 20]));
  print(ave([21, 31, 15, 10, 100]));

  // 演習：箱（直方体）の体積を求める関数を作成してみよう
}
