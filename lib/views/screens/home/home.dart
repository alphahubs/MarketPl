import 'package:flutter/material.dart';
import 'package:marketplace/models/products/product_model.dart';
import 'package:marketplace/views/screens/home/components/appbar.dart';
import 'package:marketplace/views/screens/home/components/recently_viewed.dart';
import 'package:marketplace/views/screens/home/screens/all_catg.dart';

import '../../../constant/screens.dart';
import 'components/search_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Appbar(),
          sizedHeight20,
          const SearchBox(),
          sizedHeight20,
          Container(
            height: 24,
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelStyle: secondaryTextStyle.copyWith(fontSize: 14),
              isScrollable: true,
              physics: const BouncingScrollPhysics(),
              labelColor: Colors.white,
              unselectedLabelColor: primaryColor,
              indicator: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Fruits'),
                Tab(text: 'Groceries'),
                Tab(text: 'Meat'),
                Tab(text: 'Beverages'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ProductCategory(
                  products: productList,
                ),
                ProductCategory(
                  products: productList
                      .where((product) => product.productCategory == 'Fruits')
                      .toList(),
                ),
                ProductCategory(
                  products: productList
                      .where(
                          (product) => product.productCategory == 'Groceries')
                      .toList(),
                ),
                ProductCategory(
                  products: productList
                      .where((product) => product.productCategory == 'Meat')
                      .toList(),
                ),
                ProductCategory(
                  products: productList
                      .where(
                          (product) => product.productCategory == 'Beverages')
                      .toList(),
                ),
              ],
            ),
          ),
          RecentlyViewed(
            product: productList.first,
          ),
          sizedHeight05
        ],
      ),
    );
  }
}
