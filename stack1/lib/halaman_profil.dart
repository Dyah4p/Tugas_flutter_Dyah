import 'package:flutter/material.dart';
import 'daftar_teman.dart';

class HalamanProfil extends StatefulWidget {
  final String email;

  const HalamanProfil({super.key, required this.email});

  @override
  State<HalamanProfil> createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  bool temaProfil = true;

  void toggleTema() {
    setState(() {
      temaProfil = !temaProfil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          temaProfil ? const Color.fromARGB(255, 59, 58, 58) : Colors.white,
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: temaProfil ? Colors.black : Colors.blue,
        foregroundColor: temaProfil ? Colors.white : Colors.black,
        actions: [
          IconButton(
            icon: Icon(temaProfil ? Icons.dark_mode : Icons.light_mode),
            onPressed: toggleTema,
          ),
          IconButton(
            icon: const Icon(Icons.people),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DaftarTeman(email: widget.email),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    temaProfil ? 'images/dyah.jpg' : 'images/kucing.jpg',
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.blue,
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: temaProfil ? Colors.grey[800] : Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Email: ${widget.email}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: temaProfil ? Colors.white : Colors.black,
                  fontStyle:
                      temaProfil
                          ? FontStyle.italic
                          : FontStyle.normal, 
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                icon: const Icon(Icons.people_alt, color: Colors.white),
                label: const Text(
                  'Lihat Daftar Teman',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DaftarTeman(email: widget.email),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
