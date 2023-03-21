import 'package:marketplace/models/products/product_data.dart';

class Product {
  final String productName;
  final String productCategory;
  final int productPrice;
  final double productRating;
  final String productImage;
  final String? tag;

  Product({
    this.tag,
    required this.productName,
    required this.productCategory,
    required this.productPrice,
    required this.productRating,
    required this.productImage,
  });

  static fromJson(Map<String, dynamic> item) {}
}

List<Product> productList = products
    .map((item) => Product(
          productName: item["productName"],
          productCategory: item["productCategory"],
          productPrice: item["productPrice"],
          productRating: item["productRating"],
          productImage: item["productImage"],
        ))
    .toList();
