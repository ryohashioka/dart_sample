/// 外部ファイルの読み込みサンプル

import './5_func.dart';
import './8_class.dart';

void main() {
  // 関数
  print("== sum ==");
  print(sum(10, 5));
  print(sum(215, 300));

  print("== ave ==");
  print(ave([10, 20, 10, 20]));
  print(ave([21, 31, 15, 10, 100]));

  // クラス
  Student student = new Student("橋岡", "エキスパート（12週）", 12, 0);
  print("${student.name} : ${student.getStatus()}");
  // 外部ファイルの場合、プライベートな変数・関数は呼び出せない。
  // print(" -- 総レッスン数 : ${student._totalLessons}");
  // print(" -- 残レッスン数 : ${student._remainingLessons()}");
}
