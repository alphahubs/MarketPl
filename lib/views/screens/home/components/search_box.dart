import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constant/screens.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: MyFormField(
          // onChanged: onSearch,
          // controller: _controller,
          inputHint: 'Search',
          prefixIcon: IconButton(
              onPressed: () {
                // showSearch(
                //   context: context,
                //   delegate: MySearchDelegate(),
                // );
              },
              icon: const Icon(
                Iconsax.search_normal,
              )),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 22,
          ),
          inputFilled: true,
          inputFillColor: secondaryColor.withOpacity(.05),
          border: OutlineInputBorder(
            gapPadding: 4,
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          )),
    );
  }
}

// class MySearchDelegate extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return null;
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return null;
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Container();
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Container();
//   }
// }

  // final _controller = TextEditingController();
  // @override
  // void initState() {
  //   _controller.addListener(() {
  //     filterProducts;
  //   });
  //   super.initState();
  // }

  // filterProducts() {
  //   if (_controller.text.isNotEmpty) {}
  // }

    // final List<Product> _searchProduct = [];
  // onSearch(String query) {
  //   _searchProduct.clear();
  //   if (query.isEmpty) {
  //     setState(() {});
  //     return;
  //   }

  //   for (var element in productList) {
  //     if (element.productName.toLowerCase().contains(query.toLowerCase())) {
  //       _searchProduct.add(element);
  //     }
  //   }
  //   setState(() {});
  // }