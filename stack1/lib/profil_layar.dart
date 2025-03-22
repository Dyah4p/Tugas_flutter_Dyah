import 'package:flutter/material.dart';

class ProfilLayar extends StatelessWidget {
  const ProfilLayar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Dyah Purwaningsih')),
      body: Center(child: const GambarProfilDenganIkonEdit()),
    );
  }
}

class GambarProfilDenganIkonEdit extends StatelessWidget {
  const GambarProfilDenganIkonEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage('images/dyah.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.edit, color: Colors.white, size: 20),
          ),
        ),
      ],
    );
  }
}