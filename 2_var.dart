void main() {

  print("== int ==");
  int number = 10;
  print(number);

  print("== double ==");
  double dnumber = 1.05;
  print(dnumber);
  
  print("== String ==");
  String text = "sample_text";
  print(text);
  
  print("== Boolean ==");
  bool flag = true;
  print(flag);
  
  print("== List ==");
  List<String> list = ["data1", "data2", "data3"];
  print(list);
  
  print("== Map ==");
  Map<String, int> json = {
    "key1": 10,
    "key2": 50,
    "key3": 23,
  };
  print(json);
  
  print("== null ==");
  int? notDef;
  print(notDef.runtimeType);


  // 型指定なし（動的）
  print("== 型指定なし（動的） ==");
  dynamic any = 100;
  print(any.runtimeType);
  print(any);
  any = "Hello World";
  print(any.runtimeType);
  print(any);

  // 型指定なし（静的）
  print("== 型指定なし（静的） ==");
  var apple = "りんご";
  // apple = 100; // error!!!
  print(apple);
}