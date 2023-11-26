import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/overview_page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;

  List<Widget> widgetList = const [
    Overview(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(
              () {
                myIndex = index;
              },
            );
          },
          currentIndex: myIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blueColor,
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
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_edit_profile.png',
                width: 20,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: myIndex,
        children: widgetList,
      ),
    );
  }
}
