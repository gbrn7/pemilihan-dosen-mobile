import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem(
      {super.key, required this.iconUrl, required this.title, this.onTap});

  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              iconUrl,
              width: 24,
            ),
            const SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
