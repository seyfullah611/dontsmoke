import 'dart:math';

import 'package:flutter/material.dart';



class Motivasyon extends StatefulWidget {
  @override
  State<Motivasyon> createState() => _MotivasyonState();
}

class _MotivasyonState extends State<Motivasyon> {
  final List<String> _motivations = [
    //"- Zihninde sigarayı bırakmayla ilgili olumlu bir duygu veya düşünce belirdiğinde hemen uzaklaştırma onunla kalmaya çalış",
   // "- Sigaranın hayatın üzerindeki etkilerini derin bir şekilde düşün",
  //  "- Sigara içmenin uzun vadeli sonuçlarını hayal et ve bunu alternatif bir bakışla sigara içmeyen birinin geleceği ile karşılaştır.",
  //  "- Cesur insan cesaret gerektiren büyük bir işi başaran kişi değil, sigarayı bırakmak gibi yapılması gereken tüm eylemleri cesaretle yapan kişidir.",
    "     ",
    "     ",
    "     ",
    "     ",

  ];

  final List<String> _imagePaths = [

    "images/seviye1images/motivasyon/1.png",
   // "images/seviye1images/motivasyon/2.png",
    "images/seviye1images/motivasyon/3.png",
   // "images/seviye1images/motivasyon/4.png",
   // "images/seviye1images/motivasyon/5.png",
    "images/seviye1images/motivasyon/6.png",
    "images/seviye1images/motivasyon/7.png",
    "images/seviye1images/motivasyon/8.png",
   // "images/seviye1images/motivasyon/9.png",
   // "images/seviye1images/motivasyon/10.png",
   // "images/seviye1images/motivasyon/11.png",
    //"images/seviye1images/motivasyon/12.png",
    //"images/seviye1images/motivasyon/13.png",
   // "images/seviye1images/motivasyon/14.png",
   // "images/seviye1images/motivasyon/15.png",
    "images/seviye1images/motivasyon/16.png",
    "images/seviye1images/motivasyon/17.png",
    //"images/seviye1images/motivasyon/18.png",

  ];

  final _random = Random();
  String _motivation = "";
  String _imagePath = "";
  @override
  void initState() {
    super.initState();
    _motivation = randomMotivation;
    _imagePath = randomImagePath;

  }

  String get randomMotivation => _motivations[_random.nextInt(_motivations.length)];

  String get randomImagePath => _imagePaths[_random.nextInt(_imagePaths.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text("Motivasyon",
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              randomImagePath,
              height: 400,
            ),
            SizedBox(height: 24),
            Text(
              randomMotivation,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}