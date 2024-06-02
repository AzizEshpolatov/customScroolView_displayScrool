class ProductModel {
  final int categoryId;
  final String name;
  final String imagePath;
  final int price;
  final String description;

  ProductModel({
    required this.name,
    required this.price,
    required this.categoryId,
    required this.description,
    required this.imagePath,
  });
}
