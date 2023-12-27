import 'package:flutter/material.dart';


class Meydanoku4_3 extends StatefulWidget {
  Meydanoku4_3({
    Key? key,
  }) : super(key: key);

  @override
  State<Meydanoku4_3> createState() => _Meydanoku4_3State();
}

class _Meydanoku4_3State extends State<Meydanoku4_3> {
  int _index = 0;
  bool _isCorrect = true;

  final List<String> _cumleler = [
    'Sigara ya hemen bırakılır ya da bırakılamaz',
    'Sigara hemen bırakıldığı gibi çoğu kez azaltılarak da bırakılabilir.',
    'Bıraktıktan sonra bir kez içersen bir daha bırakamam',
    'Denemek uygun değil ancak denedikten sonra da bırakmak mümkün',
    'Sigarayı bırakamam',
    'Kazanılan her alışkanlık terk edilebilir, başarısız girişimler kanıt olamaz, aksi çok sayıda başarı öyküsü var.',
    'Bir kez bırakmayı başaramazsam başarısızın teki olurum',
    'Çoğu başarı deneyim ve çabalarla gerçekleşir, başarısızlık insanın kendisiyle değil, kullandığı yöntemle ilişkilidir. Uygun yöntem bırakmayı kolaylaştırır.',
    'Sigarayı bırakmak istiyorum ama bırakmadıktan sonra böyle düşünmenin bir kıymeti yok',
    'Sigarayı bırakmayı düşünmek de bir başarıdır, sonuca gitmek için değerli bir başlangıçtır',
    'Sigara içmediğim günler de oldu ama bırakamadıysam yine de başarısızım demektir',
    'Sigara içilmeyen günler başarılı olunabileceğinin kanıtıdır, aralıklı da ola bırakma başarısı değerlidir.',
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
        backgroundColor: Color(0xFFFF9966),
        title: Text(
          'Meydan Oku',
          style: TextStyle(color: Color(0xFFB792900)),
        ),
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
                primary: Color(0xFFFF9966),
              ),
              child: Text(
                _isCorrect ? 'İşlevsel Değil' : 'İşlevsel',
                style: TextStyle(color: Color(0xFFB792900)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
