import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/home_service_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: darkBlueColor,
          elevation: 0,
          backgroundColor: whiteColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  width: 20,
                  color: darkBlueColor,
                ),
                label: 'Overview'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_edit_profile.png',
                  width: 20,
                ),
                label: 'Profile'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildInformation(),
          buildServices(context),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gibran',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img_profile.png'),
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
      margin: const EdgeInsets.only(top: 24),
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
                'Muhammad Rayhan Gibran',
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
            'General',
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
                onTap: () {},
                description: 'Pemilihan Dosen Pembimbing Skripsi',
              ),
              HomeServiceItem(
                iconUrl: 'assets/arrow-decision-outline.png',
                title: 'SPK Pemilihan Dosen',
                onTap: () {},
                description:
                    'Sistem Pendukung Keputusan Pemilihan Dosen Pembimbing Skripsi',
              ),
              HomeServiceItem(
                iconUrl: 'assets/chalkboard-teacher.png',
                title: 'Data Dosen',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
