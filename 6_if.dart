/// 条件文のサンプルコード
/// 処理を分岐させることができます。
/// 下記のような比較演算子を用いることで条件を記述することができます。
/// == (等しい)
/// != (等しくない)
/// <  (小なり[未満])
/// <= (小なりイコール[以下])
/// >  (大なり[超])
/// >= (大なりイコール[以上])

/// 指定された名前で検索
List<Map<String, dynamic>> filter_by_name(
    List<Map<String, dynamic>> users, String name) {
  // if 文
  users.forEach((user) {
    if (user["name"] == name) {
      print(user);
    }
  });

  // List の where 機能
  return users.where((user) => user["name"] == name).toList();
}

/// 指定の年齢より上の人を返却
List<Map<String, dynamic>> filter_by_over_age(
    List<Map<String, dynamic>> users, int age) {
  // if 文
  users.forEach((user) {
    if (user["age"] > age) {
      print(user);
    }
  });

  // List の where 機能
  return users.where((user) => user["age"] > age).toList();
}

/// 指定の年齢以下の人を返却
List<Map<String, dynamic>> filter_by_under_than_age(
    List<Map<String, dynamic>> users, int age) {
  // if 文
  users.forEach((user) {
    if (user["age"] <= age) {
      print(user);
    }
  });

  // List の where 機能
  return users.where((user) => user["age"] <= age).toList();
}

void main() {
  List<Map<String, dynamic>> users = [
    {"name": "太郎", "age": 32},
    {"name": "次郎", "age": 26},
    {"name": "花子", "age": 30},
  ];

  print("== 次郎 ==");
  print(filter_by_name(users, "次郎"));

  print("== 30歳より上 ==");
  print(filter_by_over_age(users, 30));

  print("== 30歳以下 ==");
  print(filter_by_under_than_age(users, 30));

  // 演習：ユーザに「住所」の情報を追加し、「大阪府」に住んでいるユーザを返却する関数を作成してください。
}
