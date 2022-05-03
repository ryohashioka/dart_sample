/// ２つの数値の合計を求める
int sum(int num1, int num2) {
  return num1 + num2;
}

double ave(List<int> nums) {
  int sum = 0;
  nums.forEach((num) {
    sum += num;
  });

  return sum / nums.length;
}

void main() {
  print("== sum ==");
  print(sum(10, 5));
  print(sum(215, 300));

  
  print("== ave ==");
  print(ave([10, 20, 10, 20]));
  print(ave([21, 31, 15, 10, 100]));
}