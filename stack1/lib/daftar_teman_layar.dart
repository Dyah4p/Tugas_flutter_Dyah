import 'package:flutter/material.dart';

class Teman {
  final String nama;

  Teman({required this.nama});
}

class DaftarTemanLayar extends StatelessWidget {
  final List<Teman> daftarTeman = [
    Teman(nama: 'Waras Tri Wijaya'),
    Teman(nama: 'Aji kia Ramadhani'),
    Teman(nama: 'Adi tegar setiawan'),
    Teman(nama: 'Jenniva Retno Nuryuansyah'),
    Teman(nama: 'Dina Asritama Wulandari'),
    Teman(nama: 'Muhammad Novianto'),
    Teman(nama: 'Atik Setyaningsih'),
    Teman(nama: 'Alfi Fadli'),
    Teman(nama: 'Dyah Purwaningsih'),
    Teman(nama: 'Rafael Theo Santoso'),
    Teman(nama: 'Muhammad Amir'),
    Teman(nama: 'Nur Rahman saleh'),
    Teman(nama: 'Amanda Aditama'),
    Teman(nama: 'Claudea cahaya cinta'),
    Teman(nama: 'Nabilah Junita'),
    Teman(nama: 'Devan Vidhel Azadan'),
    Teman(nama: 'Maheswara'),
    Teman(nama: 'Muhammad Afiq Marzuki'),
    Teman(nama: 'Sultan Syah'),
  ];

  
  DaftarTemanLayar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Teman'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              
              Navigator.pushNamed(context, '/profil');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: daftarTeman.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(daftarTeman[index].nama),
          );
        },
      ),
    );
  }
}