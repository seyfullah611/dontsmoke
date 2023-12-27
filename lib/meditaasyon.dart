import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class Meditaasyon extends StatefulWidget {
  Meditaasyon({
    Key? key,
  }) : super(key: key);

  @override
  State<Meditaasyon> createState() => _MeditaasyonState();
}

class _MeditaasyonState extends State<Meditaasyon>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  late Timer _timer;
  int _timerCount = 100; // 10 dakika
  bool _isButtonPressed = false;



  void vibrate() {

  }

  List<Sentence> sentences = [
    Sentence(
      text: " ",
      duration: Duration(minutes: 1),
    ),
    Sentence(
      text: "Meditasyon yapmak için öncelikle sana huzur veren bir şeylere odaklanman gerekir. Bunun için sana huzur veren bir kelime, nesne ya da görüntüye odaklanabilirsin.",
      duration: Duration(seconds: 4),
    ),
    Sentence(
      text: "Örneğin: gün batımı, gökyüzü, sessizlik, doğa, su vb. Ya da nefesine odaklanmayı tercih edebilirsin.",
      duration: Duration(seconds: 3),
    ),
    Sentence(
      text: "Rahatsız edilmeyeceğin sessiz bir yer bul.",
      duration: Duration(seconds: 4),
    ),
    Sentence(
      text: "Senin için rahat olan bir pozisyonda otur.",
      duration: Duration(seconds: 4),
    ),
    Sentence(
      text: "Bu etkinlik bir dakika sürecektir ve süre sonunda cihazınızda 3 saniye boyunca titreşim çalışacak.",
      duration: Duration(seconds: 6),
    ),
    Sentence(
      text: "Gözlerini kapat ve sana huzur veren bir kelimeye, görüntüye ya da nefesine bir dakika boyunca odaklan.",
      duration: Duration(seconds: 6),
    ),
    Sentence(
      text: "",
      duration: Duration(seconds: 60),
    ),
    Sentence(
      text: "Yapabildikçe uygulamanın gün sayısını ve süresini arttırmaya devam et",
      duration: Duration(seconds: 6),
    ),
    Sentence(
      text: "Amaç meditasyon süresini iki dakikaya kadar arttırmaktır.",
      duration: Duration(seconds: 6),
    ),
  ];

  int _sentenceIndex = 0;
  bool _isSentenceVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timerCount--;
        if (_timerCount == 11) {
          vibrate();
        }
        if (_timerCount == 0) {
          stopTimer();
          _controller?.stop();
        }
      });
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
        _isSentenceVisible = true;
      } else {
        stopTimer();
        _controller?.stop();
      }
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isSentenceVisible = false;
      });

      if (_sentenceIndex < sentences.length - 1) {
        Future.delayed(sentences[_sentenceIndex].duration, () {
          setState(() {
            _isSentenceVisible = true;
          });

          showNextSentence();
        });
      }
    });
  }

  void onButtonPressed() {
    if (!_isButtonPressed) {
      _isButtonPressed = true;
      startTimer();
      _controller?.repeat();
      showNextSentence();
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'images/meditasyon.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
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
                      onPressed: _isButtonPressed ? null : () {
                        onButtonPressed();
                        if (_timerCount == 90) {
                          vibrate();
                        }
                      },
                      child: const Text('Oynat'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_sentenceIndex < sentences.length)
            AnimatedOpacity(
              opacity: 1.0,
              duration: const Duration(milliseconds: 500),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFADD8E6),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    sentences[_sentenceIndex].text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black38,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Meditaasyon(),
  ));
}

class Sentence {
  final String text;
  final Duration duration;

  Sentence({
    required this.text,
    required this.duration,
  });
}
