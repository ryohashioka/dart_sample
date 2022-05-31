/// 配列型のサンプルコード
/// 配列は複数のデータを管理することができます。順序も保持されます。
void main() {
  // 文字型を複数格納できる配列
  List<String> list = ["data1", "data2", "data3"];
  print(list);

  // 取り出し
  print(list[0]);
  print(list[1]);
  print(list[2]);

  // 末尾に追加
  list.add("data4");
  list.add("data5");
  print(list);

  // 削除
  list.remove("data3");
  list.removeLast();
  print(list);

  // forEach（繰り返し）
  int counter = 1;
  list.forEach((value) {
    print('$counter : $value');
    // counter 変数の値を +1
    counter++;
    // counter = counter + 1;
  });

  // その他、int, bool, List, Map 等の他の型も指定可能
  // dynamic などの動的な型指定も可能
  List<dynamic> dynamicList = [123, 'abc', true];
  print(dynamicList);

  // 演習：配列を定義して、追加、削除してみよう
}
