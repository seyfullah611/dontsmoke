import 'package:flutter/material.dart';

class Anket extends StatefulWidget {
  final String kullaniciId;

  Anket({required this.kullaniciId});

  @override
  _AnketState createState() => _AnketState();
}

class _AnketState extends State<Anket> {
  int _secilenCevap = -1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text(
          'Anket',
          style: TextStyle(color: Color(0xFF5E816B)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Soru 1: Hangi renkleri seversiniz?',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                cevapSecenek(0, 'Kırmızı'),
                cevapSecenek(1, 'Mavi'),
                cevapSecenek(2, 'Sarı'),
                cevapSecenek(3, 'Yeşil'),
                cevapSecenek(4, 'Mor'),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _anketiKaydet,
              child: Text('Anketi Kaydet'),
            ),
          ],
        ),
      ),
    );
  }

  Widget cevapSecenek(int cevapNo, String cevapAdi) {
    return ListTile(
      title: Text(
        cevapAdi,
        style: TextStyle(fontSize: 16.0),
      ),
      leading: Radio(
        value: cevapNo,
        groupValue: _secilenCevap,
        onChanged: (int? secilen) {
          setState(() {
            _secilenCevap = secilen!;
          });
        },
      ),
    );
  }

  void _anketiKaydet() async {
    if (_secilenCevap != -1) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Anket başarıyla kaydedildi!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Lütfen bir cevap seçin.')),
      );
    }
  }
}
