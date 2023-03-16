import 'package:flutter/material.dart';
import 'package:marketplace/constant/screens.dart';

class CustomTextField extends StatelessWidget {
  final String? label, inputHint;
  final String? Function(String?)? validator;
  final IconButton? suffixIcon, prefixIcon;
  final bool? obscureText;

  const CustomTextField({
    Key? key,
    this.label,
    required this.inputHint,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? 'Hi',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        sizedHeight10,
        MyFormField(
          inputHint: inputHint,
          obscureText: obscureText,
          validator: validator,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        sizedHeight20
      ],
    );
  }
}
