/// 辞書型のサンプルコード
/// 辞書は Key と Value のセットで複数データを管理する型です。
void main() {
  
  // 辞書型の定義と取り出し
  print("== Map ==");
  Map<String, int> json = {
    "key1": 10,
    "key2": 50,
    "key3": 23,
  };
  print(json);
  print(json["key3"]);
  print(json["key4"]);

  // 追加、編集
  json["key4"] = 100;
  json.addAll(
    {
      'key6': 0,
      'key8': 10,
    }
  );
  json["key2"] = 100;
  print(json);
  print(json["key4"]);

  // 繰り返し
  json.forEach((key, value) {
    print('$key : $value');
  });

  // List と同じく、int, bool, List, Map, dynamic などの型が指定できます。

  // 演習：辞書型を定義して値を格納、取り出ししてみよう
}