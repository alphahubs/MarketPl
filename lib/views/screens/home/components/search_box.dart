import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constant/screens.dart';

class SearchBox extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: MyFormField(
          inputHint: 'Search',
          prefixIcon: IconButton(
              onPressed: () {},
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
