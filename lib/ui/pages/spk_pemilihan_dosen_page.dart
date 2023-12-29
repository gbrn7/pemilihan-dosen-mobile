import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/shared/theme.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/buttons.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/forms.dart';

class SpkPemilihanDosenPage extends StatelessWidget {
  SpkPemilihanDosenPage({super.key});

  final bobot1Controller = TextEditingController(text: '');
  final jenis1Controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPK Pemilihan Dosen'),
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
                Center(
                  child: Text(
                    'Atribut Pendukung Keputusan',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SpkItem(
                  title: 'Pendidikan Terakhir',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Jabatan Fungsional',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Status Pegawai',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Golongan',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Masa Kerja',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Jumlah Penelitian',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Kuota',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Sisa Kuota',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Skor Kuisoner Mahasiswa',
                  jenisSelected: 'Benefit',
                ),
                const SpkItem(
                  title: 'Jumlah Bimbingan',
                  jenisSelected: 'Benefit',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomFilledButton(
                  title: 'Submit',
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
