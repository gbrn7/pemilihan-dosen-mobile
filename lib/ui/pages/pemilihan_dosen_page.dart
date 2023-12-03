import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/buttons.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/forms.dart';

class PemilihanDosenPage extends StatelessWidget {
  PemilihanDosenPage({super.key});

  final judulController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Dosen Pembimbing'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFormField(
                  title: 'Judul Skripsi',
                  controller: judulController,
                  hint: 'Masukkan Judul Skripsi Anda',
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomDropdownField(
                  title: 'Dosen Pembimbing',
                  isShowTitle: true,
                  hint: 'Pilih Dosen Pembimbing',
                  items: ["Brazil", "Italia", "Tunisia", 'Canada'],
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFilledButton(
                  title: 'Daftar',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
