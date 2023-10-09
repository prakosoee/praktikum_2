import 'package:flutter/material.dart';

class Produkdetail extends StatefulWidget {
  final String kodeproduk;
  final String namaproduk;
  final int harga;

  const Produkdetail({
    Key? key,
    required this.kodeproduk,
    required this.namaproduk,
    required this.harga,
  }) : super(key: key);

  @override
  _ProdukdetailState createState() => _ProdukdetailState();
}

class _ProdukdetailState extends State<Produkdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail produk'),
      ),
      body: Column(
        children: [
          Text("Nama Produk: " + widget.namaproduk),
          Text("Kode Produk: " + widget.kodeproduk),
          Text("Harga: ${widget.harga}"),
        ],
      ),
    );
  }
}
