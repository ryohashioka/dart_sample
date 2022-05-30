/// 繰り返し文
/// 決まった処理を繰り返すことでプログラム量を削減することができます。

void main() {
  // for
  for (var i = 0; i < 3; i++) {
    print(i);
  }
  print("--");

  // for..in
  var list = [1, 5, 10];
  for (var item in list) {
    print(item);
  }
  print("--");

  // forEach
  list.forEach((number) {
    print(number);
  });
  print("--");

  // 演習１：1 - 100 までの数字で３の倍数を print するプログラムを書いてください。
  // 演習２：1 - 100 までの数字で FizzBuzz （3の倍数で "Fizz" を出力し、5の倍数で "Buzz" を出力、15の倍数で "FizzBuzz" を出力する）ゲームを実装してください。
}
