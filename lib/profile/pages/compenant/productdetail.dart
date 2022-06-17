class Product {
  String lineItemId;
  int productId;
  String productName;
  List<Category> categories;
  List<AnyImage> images;
  List<String> size;
  String shortDescription;
  String regularPrice;
  String salePrice;
  int discount;
  bool ifItemAvailable;
  bool ifAddedToCart;
  String description;
  int stockQuantity;
  int quantity;

  Product(
      this.lineItemId,
      this.productId,
      this.productName,
      this.categories,
      this.images,
      this.size,
      this.shortDescription,
      this.regularPrice,
      this.salePrice,
      this.discount,
      this.ifItemAvailable,
      this.ifAddedToCart,
      this.description,
      this.stockQuantity,
      this.quantity);

  @override
  toString() => "productId: $productId , productName: $productName";
}

class AnyImage {
  int id;
  String imageDescription;
  String imageURL;
  String title;
  String alt;

  AnyImage(
    this.id,
    this.imageDescription,
    this.imageURL,
    this.alt,
    this.title,
  );
}

class Category {
  int id;
  String name;
  int parent;
  String description;
  AnyImage image;
  int count;

  Category(this.id, this.name, this.parent, this.description, this.image,
      this.count);
}

List fr = [
  Category(
    12,
    "ADD TO BAG",
    23,
    "ADD TO BAG",
    AnyImage(
        22, "ADD TO BAG", "assets/start_app/0.jpg", "ADD TO BAG", "ADD TO BAG"),
    12,
  )
];
