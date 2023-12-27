import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HesaplamaSayfasiWeb2_1_1 extends StatefulWidget {
  @override
  _HesaplamaSayfasiWeb2_1_1State createState() => _HesaplamaSayfasiWeb2_1_1State();
}

class _HesaplamaSayfasiWeb2_1_1State extends State<HesaplamaSayfasiWeb2_1_1> {

  bool isLoading = true;
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text('Hesaplayıcı'),
      ),
      body: Stack(
        children: <Widget>[

          isLoading
              ? Center(
            child: CircularProgressIndicator(),
          )
              : isError
              ? Center(
            child: Text('Bir hata oluştu.'),
          )
              : Stack(),
        ],
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/index.html');

  }
}

