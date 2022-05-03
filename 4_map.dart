void main() {
  
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
}