import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Selamat Datang Di Universitas Esa Unggul'
                '\nProdi Teknik Informatika - Fakultas Ilmu Komputer',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25,),
            Image.asset('assets/image/micko.jpg', width: 300),
            const SizedBox(height: 25,),
            const Text('Nama             :  Micko Tubagas '
                '\nNim                :  20190801086'
                '\nHobby            :  Bermusik'
                '\nPerkerjaan    :  Mahasiswa'
                '\nStatus            :  Belum Menikah',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}