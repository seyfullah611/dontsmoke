import 'package:flutter/material.dart';
import 'dart:async';


class NefesEg extends StatefulWidget {
  NefesEg({
    Key? key,
  }) : super(key: key);

  @override
  State<NefesEg> createState() => _NefesEgState();
}

class _NefesEgState extends State<NefesEg> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  late Timer _timer;
  int _timerCount = 120; // 10 dakika
  List<String> sentences = [
    "Başlıyoruz… ",
    "Burnundan yavaşça ve derin bir nefes al",
    "Aldığın nefesi 3-4 saniye kadar tut.",
    "Daha sonra nefesi ağzından yavaşça ver (7-8 saniye). Bu esnada karın bölgenin inmesi gerekir.",
    "Dikkatini nefesine yoğunlaştır.",
    "Bu egzersizi 2 dakika boyunca devam ettir.",
    "Nefes Al",
    "Nefes Ver",
    "Nefes Al",
    "Nefes Ver",
    /*
    "Bir elinizi göğsünüzün üst kısmına, diğerini de karnınıza koyun.",
    "Şimdi dört dakika boyunca 4’e kadar sayarak nefes almayı ve 4’e kadar sayarak nefes vermeyi deneyin ve sakinleşip sakinleşmediğinize bakın.",
    "Ağzınızdan ya da burnunuzdan nefes almanız fark etmez, nasıl rahat ediyorsanız öyle nefes alın.",
    "Yavaşça nefes aldığınızdan ve hava yutmadığınızdan emin olun.",
    "Dikkatinizi nefesinize ve karnınızın üstünde inip çıkan elinizin hareketine verin.",
    */


  ];
  List<int> sentenceDurations = [
    2,
    // Başlıyoruz…
    4,
    // Burnundan yavaşça ve derin bir nefes al (4 saniye)•	Burnundan yavaşça ve derin bir nefes al
    4,
    //Aldığın nefesi 3-4 saniye kadar tut.
    8,
    // Daha sonra nefesi ağzından yavaşça ver (7-8 saniye). Bu esnada karın bölgenin inmesi gerekir.
    4,
    // Dikkatini nefesine yoğunlaştır.
    4,
    // Bu egzersizi 2 dakika boyunca devam ettir.
    8,
    // Nefes Al
    4,
    // Nefes Ver
    8,
    // Nefes Al
    4,
    // Nefes Ver
  ];
  int _sentenceIndex = 0;
  bool _isSentenceVisible = false;
  bool _isButtonPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: _timerCount),
    );
    _controller?.forward();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timerCount--;
      });
      if (_timerCount == 0) {
        stopTimer();
        _controller?.stop();
      }
    });
  }

  void stopTimer() {
    if (_timer.isActive) {
      _timer.cancel();
    }
  }

  void showNextSentence() {
    setState(() {
      if (_sentenceIndex < sentences.length - 1) {
        _sentenceIndex++;
      } else {
        stopTimer();
        _controller?.stop();
      }
      _isSentenceVisible = true;
      Future.delayed(Duration(seconds: sentenceDurations[_sentenceIndex]), () {
        setState(() {
          _isSentenceVisible = false;
        });
        if (_sentenceIndex < sentences.length - 1) {
          Future.delayed(Duration(seconds: 1), () {
            showNextSentence();
          });
        }
      });
    });
  }

  void onButtonPressed() {
    if (!_isButtonPressed) {
      _isButtonPressed = true;
      startTimer();
      _controller?.forward();
      showNextSentence();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*  Image.asset(
          'images/giphy.gif',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),*/
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top: 250),
              // Adjust the padding value as needed
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/nefes.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 50,
              color: Colors.black.withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '$_timerCount saniye kaldı',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: ElevatedButton(
                      onPressed: _isButtonPressed ? null : onButtonPressed,
                      child: const Text('Oynat'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: _isSentenceVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFADD8E6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  sentences[_sentenceIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 32),
              child: SizedBox(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  value: 1 - (_timerCount / 120),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

