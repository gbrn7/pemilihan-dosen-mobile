import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
    this.keyboardType,
    this.onFieldSubmitted,
  });

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
      this.isShowSearchField = true,
      this.controller,
      required this.items,
      this.selectedValue});

  final String title;
  final bool isShowTitle;
  final bool? isShowSearchField;
  final List<String> items;
  final TextEditingController? controller;
  final String? selectedValue;

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
            fit: FlexFit.loose,
            showSelectedItems: true,
            showSearchBox: isShowSearchField!,
            searchFieldProps: TextFieldProps(
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
              controller: controller,
            ),
          ),
          items: items,
          selectedItem: selectedValue,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelStyle: blackTextStyle.copyWith(fontSize: 12),
              hintText: !isShowTitle ? title : null,
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

class SpkItem extends StatelessWidget {
  const SpkItem(
      {super.key,
      required this.title,
      this.bobotController,
      this.jenisController,
      required this.jenisSelected});

  final String title;
  final TextEditingController? bobotController;
  final TextEditingController? jenisController;
  final String jenisSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: CustomFormField(
              title: 'Bobot (%)',
              controller: bobotController,
              isShowTitle: false,
            ),
          ),
          const SizedBox(width: 4),
          Flexible(
            child: CustomDropdownField(
              title: 'Jenis',
              isShowTitle: false,
              isShowSearchField: false,
              items: const ['Benefit', 'Cost'],
              controller: jenisController,
              selectedValue: jenisSelected,
            ),
          ),
        ],
      ),
    );
  }
}
