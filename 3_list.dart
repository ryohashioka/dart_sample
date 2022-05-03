void main() {
  List<String> list = ["data1", "data2", "data3"];
  print(list);
  
  // 追加
  list.add("data4");
  list.add("data5");
  print(list);

  // 削除
  list.remove("data3");
  list.removeLast();
  print(list);

  // for
  int counter = 1;
  list.forEach((value) {
    print('$counter : $value');
    counter++;
  });
}