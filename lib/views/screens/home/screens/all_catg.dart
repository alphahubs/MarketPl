import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/constant/screens.dart';

class AllCatg extends StatelessWidget {
  const AllCatg({Key? key}) : super(key: key);

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
        itemCount: 4,
        itemBuilder: (_, index) {
          return Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: secondaryColor.withOpacity(.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        image: const DecorationImage(image: NetworkImage(''))),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Product Name'),
                      const Text('Product Category'),
                      sizedHeight05,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Iconsax.star1,
                                color: Colors.orange,
                                size: 18,
                              ),
                              Text('(rating)'),
                            ],
                          ),
                          // sizedWidth50,
                          const Text('\$price'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
