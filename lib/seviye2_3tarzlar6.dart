import 'package:flutter/material.dart';

class Seviye2_3_6 extends StatefulWidget {
  @override
  State<Seviye2_3_6> createState() => _Seviye2_3_6State();
}

class _Seviye2_3_6State extends State<Seviye2_3_6> {
  final List<String> texts = [
    'Sigara İçmemenin Sana ve Çevrene Olan Yararlarını Düşün',
    'Fiziksel olarak daha sağlıklı olursun',
    'Ruhsal olarak daha iyi olursun',
    'Dişlerin güzel görünür, nefesin hoş kokar, kırışıklıklardan korunmuş olursun',
    'Paranı tasarruf edip yararlı şeyler için harcarsın',
    'Çevrendekilere zarar vermezsin',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text('İçmemenin Yararlarına',
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: texts.map((text) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFFD3EFDE),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}


