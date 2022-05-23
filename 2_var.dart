/// 変数と型のサンプルコード
/// 変数を定義すると、値を使いまわしたり値に意味を持たせて可読性を向上させる効果があります。
/// 変数には型を指定することができます。
/// 型を指定しなくてもプログラミング可能ですが、型を意識したプログラミングを行うことでバグ（不具合）を防ぐこともできます。
void main() {

  // int : 数値型（整数）
  print("== int ==");
  int number = 10;
  print(number);
  int a = 10;
  int b = 20;
  int c = a + b;
  print(c);

  // 演習：int 型の変数を定義して引算してみよう

  // double : 整数型（小数）
  print("== double ==");
  double dnumber = 1.05;
  print(dnumber);
  double d = 100.0;
  double e = 15.0;
  double f = d / e;
  print(f);
  double g = d % e; // 余り
  print(g);

  // 演習：double 型の変数を定義して掛け算してみよう

  // String : 文字列型
  print("== String ==");
  String text = "sample_text";
  print(text);
  String hello = "Hello";
  String name = "Dart!";
  print(hello + name);

  // 演習：文字列型を定義してみよう

  // boolean : 真偽型
  // if 文で活躍
  print("== Boolean ==");
  bool flag = true;
  print(flag);
  print(!flag);
  
  // List : 配列型
  // 3_list で詳細を解説
  print("== List ==");
  List<String> list = ["data1", "data2", "data3"];
  print(list);
  
  // Map : 辞書型
  // 4_map で詳細を解説
  print("== Map ==");
  Map<String, int> json = {
    "key1": 10,
    "key2": 50,
    "key3": 23,
  };
  print(json);

  // null （値が代入されていない）
  // 型の後ろに ? をつけると null を許可することができます。
  print("== null ==");
  int? notDef;
  print(notDef.runtimeType);

  // 型指定なし（動的）
  // どんなデータでも代入できるが、意味もなく定義することは推奨しない。
  print("== 型指定なし（動的） ==");
  dynamic any = 100; // int
  print(any.runtimeType);
  print(any);
  any = "Hello World"; // String
  print(any.runtimeType);
  print(any);

  // 型指定なし（静的）
  print("== 型指定なし（静的） ==");
  var apple = "りんご";
  // apple = 100; // error!!!
  print(apple);
}