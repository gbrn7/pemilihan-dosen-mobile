import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/shared_methods.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/buttons.dart';
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
      showCustomSnackbar(context, 'Email & Password Field are required');
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(125, 137, 162, 197),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(
          right: 24,
          left: 24,
          top: 80,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  margin: const EdgeInsets.only(
                    top: 24,
                    bottom: 16,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/polinema_logo.png'),
                    ),
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: greyColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Masukkan Username dan Password \n(Menggunakan NIM anda)',
                          style: whiteTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Login',
                  onPressed: () {
                    if (validate()) {
                      Navigator.pushNamed(context, '/home');
                    }
                  },
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(108, 122, 141, 100),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Sistem Informasi Pemilihan Dosen Pembimbing',
                  style: whiteTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
