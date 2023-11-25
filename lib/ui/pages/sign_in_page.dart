import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/forms.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool validate() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 50,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  margin: const EdgeInsets.only(
                    top: 100,
                    bottom: 25,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/polinema_logo.png'),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: redColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Masukkan Username dan Password (Menggunakan NIM anda)',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Email Address',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomFormField(
                  title: 'Password',
                  controller: passwordController,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
