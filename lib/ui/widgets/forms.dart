import 'package:dropdown_search/dropdown_search.dart';
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
      this.onFieldSubmitted,
      this.hint});

  final String title;
  final String? hint;
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
            hintText: hint,
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintStyle: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: light,
            ),
          ),
        )
      ],
    );
  }
}

class CustomDropdownField extends StatelessWidget {
  const CustomDropdownField(
      {super.key,
      required this.title,
      required this.isShowTitle,
      this.hint,
      this.controller,
      required this.items});
  final String title;
  final bool isShowTitle;
  final String? hint;
  final List<String> items;
  final TextEditingController? controller;

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
        DropdownSearch<String>(
          popupProps: PopupProps.menu(
            showSelectedItems: true,
            showSearchBox: true,
            searchFieldProps: TextFieldProps(
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
              controller: controller,
            ),
          ),
          items: const ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              hintText: hint,
              hintStyle: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
              contentPadding: const EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          onChanged: print,
        )
      ],
    );
  }
}
