class Product {
  final String name;
  final double price;
  final String image;
  final String category;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.category,
  });
}

class MacProduct extends Product {
  MacProduct({required super.name, required super.price, required super.image})
    : super(category: "Mac");
}

class IpadProduct extends Product {
  IpadProduct({required super.name, required super.price, required super.image})
    : super(category: "iPad");
}

class IphoneProduct extends Product {
  IphoneProduct({
    required super.name,
    required super.price,
    required super.image,
  }) : super(category: "iPhone");
}
