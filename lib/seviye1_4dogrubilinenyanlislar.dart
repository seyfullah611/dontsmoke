import 'package:flutter/material.dart';


class Dogrubilinenyanlislar1_4 extends StatefulWidget {
  Dogrubilinenyanlislar1_4({
    Key? key,
  }) : super(key: key);

  @override
  State<Dogrubilinenyanlislar1_4> createState() => _Dogrubilinenyanlislar1_4State();
}

class _Dogrubilinenyanlislar1_4State extends State<Dogrubilinenyanlislar1_4> {
  int _index = 0;
  bool _isCorrect = true;

  final List<String> _cumleler = [
    'Sigarayı bırakmak ruh sağlığını olumsuz etkiler.',
    'Sigarayı bırakmanın ruh sağlığı üzerinde olumlu bir etkisi vardır.',
    'Sigara içmek, ciddi zihinsel sağlık sorunları olan kişilerin sorunlarını daha etkili bir şekilde yönetmelerine yardımcı olur.',
    'Sigara içen ciddi ruh sağlığı sorunları olan kişilerde artan psikiyatrik semptomlar görülür',
  //  'Ruh sağlığı sorunları olan sigara kullanıcıları, sigarayı bırakmaya çalışırken nikotin yoksunluk semptomlarıyla başa çıkamayabilir.',
    'Sigara içmek insanı zayıflatır',
    'Kilo almak doğrudan sigarayla bağlantılı değildir. Sigara içenler arasında şişman ve kilolu insanlara sıklıkla rastlanılır.',
    'Sigara insanı sosyalleştirir.',
    'Sosyalleşme becerilerle alakalı bir durumdur, sigaranın doğrudan böyle bir etkisi yoktur.',

  ];

  void _toggleCumle() {
    setState(() {
      _index = (_index + 1) % _cumleler.length;
      _isCorrect = !_isCorrect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text('Sigara İçme Hakkında Doğru Bilinen Yanlışlar',
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _cumleler[_index],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _toggleCumle,
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFC9ECD8),
                // Diğer stil özelliklerini isteğe bağlı olarak ayarlayabilirsiniz
              ),
              child: Text(
                _isCorrect ? 'Yanlış olan bilgi' : 'Doğrusu',                 style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5E816B),
                fontFamily: 'Helvetica',
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

