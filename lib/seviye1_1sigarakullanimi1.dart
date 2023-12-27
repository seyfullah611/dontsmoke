import 'package:flutter/material.dart';

class Seviye1_1_1 extends StatefulWidget {
  @override
  State<Seviye1_1_1> createState() => _Seviye1_1_1State();
}

class _Seviye1_1_1State extends State<Seviye1_1_1> {
  final List<String> texts = [
    'Türkiye’de sigaraya bağlı nedenlerle her yıl 100 bin kişi hayatını kaybediyor.',
    'Dünyada her yıl yaklaşık 8 milyon insan sigara nedeniyle ölüyor, bu ölümlerin 1.2 milyonu sigara dumanından kaynaklanıyor.',
    'Türkiye\'deki ölümlerin erkeklerde yüzde 31’i, kadınlarda ise yüzde 12’si tütün kullanımına bağlı hastalıklar nedeniyledir.',
    'Türkiye\'de, her yıl 252 bin çocuk maruz kaldığı sigara dumanı nedeniyle ölüyor.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text(
          'Ölüm Oranları',
          style: TextStyle(color: Color(0xFF5E816B)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: texts.map((text) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFD0F0C0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black54,
                  radius: 8,
                ),
                title: Text(
                  text,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontFamily: 'Helvetica',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

