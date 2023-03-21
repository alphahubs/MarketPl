import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/constant/screens.dart';

import '../../../models/products/product_model.dart';
import '../cart/components/cart_count.dart';
import '../cart/components/checkout_btn.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.products,
  }) : super(key: key);

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 320,
      child: Container(
        // margin: const EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                products.productName,
                style: priceTextStyle.copyWith(
                  color: secondaryColor,
                  fontSize: 28,
                ),
              ),
              sizedHeight15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RatingBar.builder(
                      initialRating: products.productRating,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 16,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // handle rating update
                      },
                    ),
                  ),
                  Row(
                    children: const [
                      CartCountBtn(
                        icon: Icon(Iconsax.minus),
                      ),
                      sizedWidth05,
                      Text('01'),
                      sizedWidth05,
                      CartCountBtn(
                        icon: Icon(Iconsax.add),
                      ),
                    ],
                  )
                ],
              ),
              sizedHeight15,
              const Text(
                'Description',
                style: secondaryTextStyle,
              ),
              sizedHeight05,
              const Text(
                'Cum eum sapiente ut rerum deleniti. Pariatur labore repellat incidunt architecto sed. Voluptatibus illo ut. Laborum sed magni officiis sapiente qui voluptatem non ipsam.',
                style: productCategoryStyle,
              ),
              sizedHeight15,
              const Text(
                'Pack',
                style: secondaryTextStyle,
              ),
              sizedHeight05,
              const Text(
                '20 in a pack',
                style: productCategoryStyle,
              ),
              sizedHeight15,
              const Text(
                'Related Products',
                style: secondaryTextStyle,
              ),
              sizedHeight05,
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(products.productImage))),
                        ),
                      ),
                      title: Text(products.productName),
                      subtitle: Text(
                        'NGN ${products.productPrice}',
                        style: priceTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(products.productImage))),
                        ),
                      ),
                      title: Text(products.productName),
                      subtitle: Text(
                        'NGN ${products.productPrice}',
                        style: priceTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              sizedHeight20,
              const CheckoutBtn(
                price: 'Price',
                buttonText: 'Add to Cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
