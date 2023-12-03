import 'package:flutter/material.dart';
import 'package:pemilihan_dosen_mobile/ui/widgets/data_dosen_item.dart';

class DosenPage extends StatelessWidget {
  const DosenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Dosen'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(top: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    DataDosenItem(
                      name: 'Habibie Ed Dien S.Kom M.Kom',
                      profilePicture: 'assets/img_profile.jpg',
                      kuota: 7,
                    ),
                    DataDosenItem(
                      name: 'Farid Angga Pribadi S.Kom M.Kom',
                      profilePicture: 'assets/img_profile.jpg',
                      kuota: 8,
                    ),
                    DataDosenItem(
                      name: 'Usman Nur Hasan S.Kom M.Kom',
                      profilePicture: 'assets/img_profile.jpg',
                      kuota: 8,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
