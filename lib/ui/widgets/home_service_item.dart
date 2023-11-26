import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';

class HomeServiceItem extends StatelessWidget {
  const HomeServiceItem(
      {super.key,
      required this.iconUrl,
      required this.title,
      this.onTap,
      this.description});

  final String iconUrl;
  final String title;
  final VoidCallback? onTap;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: whiteColor,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: darkBlueColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      iconUrl,
                      width: 28,
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  description != null ? description! : title,
                  overflow: TextOverflow.ellipsis,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
