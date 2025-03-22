import 'package:flutter/material.dart';
import 'daftar_teman_layar.dart';
import 'profil_layar.dart';
import 'login_layar.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginLayar(), 
      routes: {
        '/login': (context) => const LoginLayar(),
        '/profil': (context) => const ProfilLayar(),
        '/daftarTeman': (context) => DaftarTemanLayar(), 
      },
    );
  }
}