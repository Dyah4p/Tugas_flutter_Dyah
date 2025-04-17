import 'package:flutter/material.dart';
import 'halaman_login.dart';
import 'daftar_teman.dart';
import 'halaman_profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HalamanLogin(),

      routes: {
        '/profil': (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return HalamanProfil(email: args['email']!);
        },
        '/teman': (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return DaftarTeman(email: args['email']!);
        },
      },
    );
  }
}
