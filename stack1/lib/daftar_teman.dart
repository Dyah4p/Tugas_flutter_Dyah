import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'halaman_profil.dart';

class Teman {
  final String nama;
  const Teman({required this.nama});
}

class DaftarTeman extends StatefulWidget {
  final String email;

  const DaftarTeman({super.key, required this.email});

  @override
  State<DaftarTeman> createState() => _DaftarTemanState();
}

class _DaftarTemanState extends State<DaftarTeman> {
  final TextEditingController jmlController = TextEditingController();
  final TextEditingController namaController = TextEditingController();

  final List<Teman> friends = const [
    Teman(nama: 'Waras Tri Wijaya'),
    Teman(nama: 'Abdul Fuad Nurdiansah'),
    Teman(nama: 'Adi Tegar Setiawan'),
    Teman(nama: 'Afiq Muhammad'),
    Teman(nama: 'Aji Kia Ramadani'),
    Teman(nama: 'Alfi Fadli'),
    Teman(nama: 'Alif Akbar'),
    Teman(nama: 'Amanda Aditama'),
    Teman(nama: 'Andri Khoirul'),
    Teman(nama: 'Atik Setya'),
    Teman(nama: 'Bayu Susilo'),
    Teman(nama: 'Claudea Cahaya'),
    Teman(nama: 'Devan V'),
    Teman(nama: 'Dina Asritama Wulandari'),
    Teman(nama: 'Elsa O'),
    Teman(nama: 'Fizal W'),
    Teman(nama: 'Febrian'),
    Teman(nama: 'Garin Dani'),
    Teman(nama: 'Haffiant'),
    Teman(nama: 'Ilham Khoiri'),
    Teman(nama: 'Jenniva Retno Nuryuansyah'),
    Teman(nama: 'Mahes'),
    Teman(nama: 'M Syarif'),
    Teman(nama: 'M Amir'),
    Teman(nama: 'M Noviyanto'),
    Teman(nama: 'M Zulfa'),
    Teman(nama: 'Nabilah'),
    Teman(nama: 'Nur Rahman Saleh'),
    Teman(nama: 'Rafael Theo Santoso'),
    Teman(nama: 'Raply F'),
    Teman(nama: 'Rizal Diaz'),
    Teman(nama: 'Satria A'),
    Teman(nama: 'Sulton'),
    Teman(nama: 'Valen P'),
    Teman(nama: 'Vhereyga Putra P'),
    Teman(nama: 'Yola A W'),
    Teman(nama: 'Dyah Purwaningsih'),
  ];

  void _navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HalamanProfil(email: widget.email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Teman'),
        actions: [
          TextButton.icon(
            onPressed: _navigateToProfile,
            icon: const Icon(Icons.person, size: 28, color: Colors.black),
            label: const Text(
              "PROFIL",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  controller: jmlController,
                  decoration: const InputDecoration(
                    labelText: 'Jumlah',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: namaController,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(
                          jumlah: int.tryParse(jmlController.text) ?? 0,
                          nama: namaController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text('Ke Cart Screen'),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Kembali'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person, size: 30),
                  title: Text(friends[index].nama),
                  trailing: const Icon(Icons.phone, size: 25),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Menghubungi ${friends[index].nama}'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
