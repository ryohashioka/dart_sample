/// クラスのサンプル
/// クラス：変数や関数の定義、設計
/// インスタンス：クラスの実体（値が代入されて参照できる状態）

void main() {
  List<Student> students = [
    new Student("橋岡", "エキスパート（12週）", 12, 0),
    new Student("西川", "エキスパート（48週）", 48, 6),
    new Student("太郎", "フリーランス（24週）", 24, 24)
  ];

  print("== 受講生 ==");
  students.forEach(((student) {
    // プライベートな変数、関数は同じファイルでは呼び出せる
    print("${student.name} : ${student.getStatus()}");
    print(" -- 総レッスン数 : ${student._totalLessons}");
    print(" -- 残レッスン数 : ${student._remainingLessons()}");
  }));
}

class Student {
  // 生徒の名前
  late String name;
  // コース
  late String course;
  // レッスン数（プライベート変数）
  late int _totalLessons;
  // 実施レッスン数
  late int _countOfLessons;

  // コンストラクタ
  // インスタンス生成時に必ず呼ばれます。
  Student(String name, String course, int totalLessons, int countOfLessons) {
    this.name = name;
    this.course = course;
    this._totalLessons = totalLessons;
    this._countOfLessons = countOfLessons;
  }

  // 受講生の受講状況を取得
  String getStatus() {
    if (_countOfLessons <= 0) {
      return "未受講";
    } else if (_countOfLessons < _totalLessons) {
      return "受講中";
    } else {
      return "卒業";
    }
  }

  // レッスンの残り回数
  int _remainingLessons() {
    return _totalLessons - _countOfLessons;
  }
}
