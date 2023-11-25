import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/polinema_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
