import 'package:flutter/material.dart';
import 'dart:math';

class MotivationPage extends StatefulWidget {
  @override
  _MotivationPageState createState() => _MotivationPageState();
}

class _MotivationPageState extends State<MotivationPage> {
  List<String> _motivationQuotes = [
    "Sigarayı bırakma konusunda inisiyatif alacak olan sensin",
   "Sigara içme hazının hayaline kapıldığında onun seni sürüklemesine izin verme.",
   "Sigara içme hazzının tadını çıkardığın ve ondan pişmanlık duyacağın , keyif aldıktan sonra kendini eleştireceğin anları düşün. Eğer bu hazdan kaçındıysan kendini nasıl övüp taktir ettiğini hayal et.",
   "Sigarayı bırakmak için eyleme geç küçük adımlar bir müddet sonra alışkanlığa dönüşür. Yaptığın eylemler organik hafızana kaydolur ve alışkanlık gelişir.",
   "Sigarayı bırakmak büyük bir işi başarmaktır. İnsan büyük bir işi başarma şansını nadiren ele geçirir.",
   "Sigara bırakma enerjisini zirveye taşımak için düşünmek yetmez, eyleme geçmek şarttır",
   "Sigara bırakma eylemi insana zevk verir özgüven kazandırır.",
   "Sigarayı bırakma konusundaki her çaba kendinden sonraki çabaları kolaylaştırır.",
   "Sigarayı bırakma eylemi, sigara bırakma düşüncesinin en sağlam destekçisidir.",
   "Sigarayı bırakmada gerileme yaşamamak kaydıyla her gün azıcık bir ilerleme bile kişiyi hedefine ulaştırmak için yeterlidir",  ];

  String _currentQuote = "";

  void _generateQuote() {
    setState(() {
      final random = Random();
      _currentQuote = _motivationQuotes[random.nextInt(_motivationQuotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFADD8E6),
        title: Text("Motivation "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentQuote.isNotEmpty)
              Text(
                _currentQuote,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),
            SizedBox(height: 20.0),
            ElevatedButton(


              child: Text("Motivasyon"),


              onPressed: _generateQuote,
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFADD8E6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}