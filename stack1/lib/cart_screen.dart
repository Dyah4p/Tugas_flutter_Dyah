import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.jumlah, required this.nama});
  final int jumlah;
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart Screen')),
      body: Text('$nama Jumlah Barang $jumlah'),
    );
  }
}
