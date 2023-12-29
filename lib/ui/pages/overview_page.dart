import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/home_service_item.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildInformation(),
          buildServices(context)
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mustofa19',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              )
            ],
          ),
          GestureDetector(
            child: Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img_profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildInformation() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adi Mustofa',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '2141762099',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jurusan',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Teknologi Informasi',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Prodi',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'D4 Sistem Informasi Bisnis',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Judul Skripsi',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Audit Sistem Informasi Menggunakan Cobit 5',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dosen Pembimbing',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Arief Prasetyo, S.Kom',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/select-multiple.png',
                title: 'Pemilihan Dosen Pembimbing',
                onTap: () {
                  Navigator.pushNamed(context, '/pemilihan-dosen');
                },
                description: 'Pemilihan Dosen Pembimbing',
              ),
              HomeServiceItem(
                iconUrl: 'assets/arrow-decision-outline.png',
                title: 'SPK Pemilihan Dosen',
                onTap: () {
                  Navigator.pushNamed(context, '/spk-pemilihan-dosen');
                },
                description: 'Sistem Pendukung Keputusan',
              ),
              HomeServiceItem(
                iconUrl: 'assets/chalkboard-teacher.png',
                title: 'Data Dosen',
                onTap: () {
                  Navigator.pushNamed(context, '/dosen');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
