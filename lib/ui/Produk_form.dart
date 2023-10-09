import 'package:praktikum_2/ui/Produk_detail.dart';
import 'package:flutter/material.dart';

class Produkform extends StatefulWidget {
  const Produkform({Key? key}) : super(key: key);

  @override
  _ProdukformState createState() => _ProdukformState();
}

class _ProdukformState extends State<Produkform> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Column(
        children: [
          _textboxkodeproduk(),
          _textboxnamaproduk(),
          _textboxhargaproduk(),
          _tombolsimpan(),
        ],
      ),
    );
  }

  _textboxkodeproduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxhargaproduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukTextboxController,
    );
  }

  _textboxnamaproduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _tombolsimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Produkdetail(
            kodeproduk: kodeProduk,
            namaproduk: namaProduk,
            harga: harga,
          ),
        ));
      },
      child: const Text('Simpan'),
    );
  }
}
