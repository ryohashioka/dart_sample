// 商品
class Item {
  Item(this.name, this.price);

  // 商品の名前
  final String name;
  // 商品の値段
  final int price;

  String _formatStars(int star) {
    if (star > 5) {
      star = 5;
    } else if (star < 1) {
      star = 1;
    }

    String starStr = '☆☆☆☆☆';
    for (int i = 0; i < star; i++) {
      starStr = starStr.replaceFirst('☆', '★');
    }

    return starStr;
  }

  // 商品のレビューをポスト
  void postReview(String comment, int star) {
    print("== ${this.name} のレビュー ==");
    print(_formatStars(star));
    print("コメント : $comment");
  }
}

// 飲み物の商品
class Drink extends Item {
  Drink(String name, int price, this.volume) : super(name, price);

  // 容量（ml）
  double volume;

  void postDrinkReview(String comment, int star, Map<String, int> subStars) {
    super.postReview(comment, star);
    subStars.forEach((key, value) {
      print("- $key : ${_formatStars(value)}");
    });
  }
}

// 棚の商品
class Shelf extends Item {
  Shelf(String name, int price, this.width, this.height, this.depth)
      : super(name, price);

  double width; // 幅
  double height; // 高さ
  double depth; // 奥行

  // 商品のレビューをポスト
  @override
  void postReview(String comment, int star) {
    print("== 親の処理を上書きすることができます。 ==");
    // 親の処理を呼び出すこともできます。
    super.postReview(comment, star);
  }
}

void main() {
  Item item = new Item("商品１", 200);
  Drink cola = new Drink("コーラ", 200, 500);
  Shelf shelf = new Shelf("メタルラック", 4800, 80, 149, 35);

  item.postReview("comment", 3);
  cola.postDrinkReview("comment", 4, {"味": 5, "安さ": 3});
  shelf.postReview("comment", 4);
}
