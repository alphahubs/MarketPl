import 'package:flutter/material.dart';
import 'package:marketplace/models/products/product_data.dart';
import 'package:marketplace/models/products/product_model.dart';
import 'package:marketplace/utils/app_bar_widget.dart';

import '../../../constant/screens.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        AppBarWidget(
          heading: Text(
            'Favorite',
            style: secondaryTextStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        sizedHeight30,
        Expanded(
          child: ListView.separated(
            itemCount: products.length,
            separatorBuilder: (BuildContext context, int index) {
              return sizedHeight15;
            },
            itemBuilder: (BuildContext context, int index) {
              final product = productList[index];
              return Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondaryColor.withOpacity(.05),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: placeholder,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(product.productImage))),
                      ),
                    ),
                    title: Text(
                      product.productName,
                      style: productNameStyle,
                    ),
                    subtitle: Text(
                      product.productCategory,
                      style: productCategoryStyle,
                    ),
                    trailing: Text(
                      'NGN ${product.productPrice}',
                      style: priceTextStyle,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
