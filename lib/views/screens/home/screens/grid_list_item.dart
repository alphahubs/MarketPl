import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/models/products/product_model.dart';

import '../../../../constant/screens.dart';
import '../../detail_screen/detail_screen.dart';

class GridListItem extends StatelessWidget {
  const GridListItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              products: product,
            ),
          ),
        );
      },
      child: Container(
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: secondaryColor.withOpacity(.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: placeholder,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      product.productImage,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    product.productName,
                    style: productNameStyle,
                  ),
                  Text(
                    product.productCategory,
                    style: productCategoryStyle,
                  ),
                  sizedHeight05,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Iconsax.star1,
                            color: Colors.orange,
                            size: 18,
                          ),
                          Text('${product.productRating}'),
                        ],
                      ),
                      sizedHeight05,
                      Text(
                        '${product.productPrice}',
                        style: priceTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
