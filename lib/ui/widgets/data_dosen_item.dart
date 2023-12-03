import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';

class DataDosenItem extends StatelessWidget {
  const DataDosenItem({
    super.key,
    this.profilePicture,
    required this.name,
    required this.kuota,
  });

  final String? profilePicture;
  final String name;
  final int kuota;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: profilePicture == null
                      ? const AssetImage('assets/img_profile.jpg')
                      : NetworkImage(profilePicture!) as ImageProvider),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Kuota : $kuota',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
