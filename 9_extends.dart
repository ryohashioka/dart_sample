// 商品
class Item {
  Item(this.name, this.price);

  // 商品の名前
  final String name;
  // 商品の値段
  final int price;
}

// 飲み物の商品
class Drink extends Item {
  Drink(String name, int price, this.volume) : super(name, price);

  // 容量（ml）
  double volume;
}

// 棚の商品
class Shelf extends Item {
  Shelf(String name, int price, this.width, this.height, this.depth)
      : super(name, price);

  double width; // 幅
  double height; // 高さ
  double depth; // 奥行
}

void main() {
  // TODO
}
