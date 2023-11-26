import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/student.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Adi Mustofa',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Log Out',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
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
                ),
                label: 'Overview'),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_edit_profile.png',
                width: 20,
                color: darkBlueColor,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
