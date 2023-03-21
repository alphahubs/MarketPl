// import 'grid_list_item.dart';

// class ProductCategory extends StatelessWidget {
//   final List<Map<String, dynamic>> products;
//   const ProductCategory({
//     Key? key,
//     required this.products,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 6,
//           mainAxisSpacing: 6,
//         ),
//         itemCount: products.length,
//         itemBuilder: (_, index) {
//           final product = products[index];
//           return GridListItem(product: product[index]);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../../models/products/product_model.dart';
import 'grid_list_item.dart';

class ProductCategory extends StatelessWidget {
  final List<Product> products;

  const ProductCategory({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
        ),
        itemCount: products.length,
        itemBuilder: (_, index) {
          final product = products[index];
          return GridListItem(product: product);
        },
      ),
    );
  }
}
