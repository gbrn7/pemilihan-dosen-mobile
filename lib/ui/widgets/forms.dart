import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.title,
      this.obscureText = false,
      this.controller,
      this.isShowTitle = true,
      this.keyboardType,
      this.onFieldSubmitted});

  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final TextInputType? keyboardType;
  final Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: medium),
          ),
        if (isShowTitle)
          const SizedBox(
            height: 4,
          ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          onFieldSubmitted: onFieldSubmitted,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        )
      ],
    );
  }
}
