import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/home_Page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/pemilihan_dosen_page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/profile_edit_page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/profile_page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/sign_in_page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/dosen_page.dart';
import 'package:pemilihan_dosen_mobile/ui/pages/spk_pemilihan_dosen_page.dart';
// import 'package:pemilihan_dosen_mobile/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      routes: {
        // '/': (context) => const SplashPage(),
        '/': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/profile-edit': (context) => ProfileEditPage(),
        '/dosen': (context) => const DosenPage(),
        '/pemilihan-dosen': (context) => PemilihanDosenPage(),
        '/spk-pemilihan-dosen': (context) => SpkPemilihanDosenPage(),
      },
    );
  }
}
