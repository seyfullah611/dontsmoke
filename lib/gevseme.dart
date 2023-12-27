import 'package:flutter/material.dart';
import 'dart:async';

class Gevseme extends StatefulWidget {
  const Gevseme({
    Key? key,
  }) : super(key: key);

  @override
  State<Gevseme> createState() => _GevsemeState();
}

class _GevsemeState extends State<Gevseme> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  late Timer _timer;
  int _timerCount = 190; // 10 minutes
  List<String> sentences = [
    "Kendinizi rahat hissedeceğiniz bir şekilde uzanın.",
    "Kendinizi tamamen serbest bırakın.",
    "Şimdi sırayla vücudunuzun her bölgesini 10 saniye boyunca kasacak ve gevşeteceksiniz.",
    "Hazırsanız başlayalım!",
    "Başınızdaki bütün kasları iyice kasın. Kaşlarınızı çatın; dilinizi, çenenizi iyice sıkın ve boynunuzu kasın (10 saniye). ...",
    "Yavaş yavaş kaslarınızı, dilinizi, çenenizi ve boyun kaslarınızı rahat bırakın, iyice gevşemelerini sağlayın.",
    "Ellerinizi yumruk yaparak iyice sıkın, kasılmayı kollarınız yukarı doğru yayılsın. Yumruklar ve kollar adeta kaskatı kesilsin (10 saniye). ...",
    "Yumruklarınızı yavaş yavaş açın ve gevşemeyi kollarınız yukarı doğru yayılsın. Kollarınızı ve ellerinizi iyice gevşetin.",
    "Mide ve karın kaslarınızı kasın, kasılmayla göğsünüzü sıkıştırın. Gerilimi iyice hissedin (10 saniye). ...",
    "Mide ve karın kaslarınızı yavaşça gevşetin ve göğsünüzün rahatlamasını sağlayın.",
    "Bacaklarınızı ve ayaklarınızı iyice kasın; adeta kaskatı duruma getirin (10 saniye). ...",
    "Bacak ve ayaklarınızı rahat bırakın; gevşeme bacaklarınızdan ayaklarınıza yayılsın.",
    "Şimdi bütün vücudunuzu başınızdan ayak ucunuza kadar hızla kasın. Her bir kasın gerginliğini kontrol edin.",
    "Böylece 10 saniye kalın.",
    "Şimdi baştan ayağa doğru yavaşça ve aşama aşama kaslarınızı gevşetin. Bütün kaslarınızın gevşemesini kontrol edin.",
    "Bütün bedeninizdeki ağırlıkları atana ve iyice hafifleyene kadar gevşeyin. Hafif bir rüzgarın yüzünüzü okşadığını ve bütün gerginliğinizi aldığını hissedin.",
    "Gevşeme ile kasılma arasındaki farka dikkat edin. Kendinizi nasıl hissediyorsunuz?"
  ];

  int _sentenceIndex = 0;
  bool _isSentenceVisible = false;
  bool _isButtonPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
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
      Future.delayed(const Duration(seconds: 11), () {
        setState(() {
          _isSentenceVisible = false;
        });
        if (_sentenceIndex < sentences.length - 1) {
          Future.delayed(const Duration(seconds: 1), () {
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
      Positioned.fill(
      child: AnimatedOpacity(
      opacity: _isSentenceVisible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                sentences[_sentenceIndex],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: ClipPath(
    clipper: TriangleClipper(),
    child: Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    color: const Color(0xFFADD8E6),
    ),
    ),
    ),
    Positioned(
    top: 0,
    left: 0,
    right: 0,
    bottom: MediaQuery.of(context).size.height * (_timerCount / 190),
    child: Container(
    color: Colors.white,
    ),
    ),
    Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child:            Container(
      height: 50,
      color: Colors.black.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
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
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFADD8E6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  sentences[_sentenceIndex],
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

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.8, 0);
    path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.2);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(size.width, size.height * 0.8);
    path.quadraticBezierTo(size.width, size.height, size.width * 0.8, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height * 0.8);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(0, 0, size.width * 0.2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

void main() {
  runApp(const MaterialApp(
    home: Gevseme(),
  ));
}

