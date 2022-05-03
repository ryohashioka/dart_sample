void main() {
  
  // for
  for (var i = 0; i < 3; i++) {
    print(i);
  }
  print("--");

  // for..in
  var list = [1,5,10];
  for (var item in list) {
    print(item);
  }
  print("--");
  
  // forEach
  list.forEach((number) {
    print(number);
  });
  print("--");
}