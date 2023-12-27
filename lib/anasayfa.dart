import 'dart:async';
import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'dart:math';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({
    Key? key,
  }) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _currentIndex = 0;
  int y = 0;
  int z = 0;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  late DateTime _targetDate;

  @override
  void initState() {
    super.initState();
    _targetDate = DateTime.now().add(const Duration(seconds: 10));
    _fetchUserLevel();
  }

  late int x = 0;

  void _fetchUserLevel() async {
    // Firebase bağlantısı olmadığı için bu fonksiyonun içeriği değiştirildi.
    // Örnek bir değer atanabilir.
    setState(() {
      x = 1; // Örnek bir değer
    });
  }

  void getDataFromFirebase(String uid) {
    // Firebase bağlantısı olmadığı için bu fonksiyonun içeriği değiştirildi.
    // Örnek bir değer atanabilir.
    int dailyAmount = 10; // Örnek bir değer

    DateTime today = DateTime.now();
    DateTime startDate = DateTime(2023, 4, 27);
    int daysSince = today
        .difference(startDate)
        .inDays;

    int totalAmount = 0;
    for (int i = 0; i < daysSince; i++) {
      totalAmount += (20 / x).round();
    }
    totalAmount += dailyAmount;

    setState(() {
      y = totalAmount;
    });
  }

  bool isContainerClicked = false;
  List<String> motivasyonImages = [
    'images/seviye1images/motivasyon/1.png',
    'images/seviye1images/motivasyon/3.png',
    'images/seviye1images/motivasyon/6.png',
    'images/seviye1images/motivasyon/7.png',
    'images/seviye1images/motivasyon/8.png',
    'images/seviye1images/motivasyon/16.png',
    'images/seviye1images/motivasyon/17.png',
  ];

  List<String> motivasyonTexts = [
    'Sigarayı bırakma konusunda inisiyatif alacak olan sensin',
    'Sigara içme hazının hayaline kapıldığında onun seni sürüklemesine izin verme.',
    'Sigara içme hazzının tadını çıkardığın ve ondan pişmanlık duyacağın, keyif aldıktan sonra kendini eleştireceğin anları düşün. Eğer bu hazdan kaçındıysan kendini nasıl övüp taktir ettiğini hayal et.',
    'Sigarayı bırakmak için eyleme geç küçük adımlar bir müddet sonra alışkanlığa dönüşür. Yaptığın eylemler organik hafızana kaydolur ve alışkanlık gelişir.',
    'Sigarayı bırakmak büyük bir işi başarmaktır. İnsan büyük bir işi başarma şansını nadiren ele geçirir.',
    'Sigara bırakma enerjisini zirveye taşımak için düşünmek yetmez, eyleme geçmek şarttır',
    'Sigara bırakma eylemi insana zevk verir özgüven kazandırır.',
    'Sigarayı bırakma konusundaki her çaba kendinden sonraki çabaları kolaylaştırır.',
    'Sigarayı bırakma eylemi, sigara bırakma düşüncesinin en sağlam destekçisidir.',
    'Sigarayı bırakmada gerileme yaşamamak kaydıyla her gün azıcık bir ilerleme bile kişiyi hedefine ulaştırmak için yeterlidir',
  ];

  showAlertDialog(BuildContext context) {
    int randomIndex = Random().nextInt(motivasyonImages.length - 1);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Motivasyon'),
          content: Column(
            children: [
              Image.asset(
                motivasyonImages[randomIndex],
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 16),
              Text(motivasyonTexts[randomIndex]),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kapat'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final paddingHeight = screenHeight * 0.2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFADD8E6),
        title: const Text("Anasayfa"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/anasayfa.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            padding: EdgeInsets.fromLTRB(
                16.0, paddingHeight, 16.0, paddingHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Hedefime Kalan Süre',
                  style: TextStyle(
                    fontFamily: 'Agency FB',
                    fontSize: 25,
                    color: Color(0xff707070),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(22.0),
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0xffd1d1d1),
                    ),
                  ),
                  child: CountdownTimer(
                    endTime: _targetDate.millisecondsSinceEpoch,
                    widgetBuilder: (context, time) {
                      final days = time?.days ?? 0;
                      final hours = time?.hours ?? 0;
                      final minutes = time?.min ?? 0;

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildTimeBox('$days', 'Gün'),
                            _buildTimeBox('$hours', 'Saat'),
                            _buildTimeBox('$minutes', 'Dakika'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16.0),

                const SizedBox(height: 16.0),

                SizedBox(
                  height: 137.0,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(17.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xffe5e5e5),
                            ),
                          ),
                          width: 150.0,
                          height: 107.0,
                          margin: const EdgeInsets.only(right: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Tasarruf Edilen Para (TL)',
                                style: TextStyle(
                                  fontFamily: 'Agency FB',
                                  fontSize: 10,
                                  color: Color(0xff707070),
                                ),
                                softWrap: false,
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                '$y',
                                style: const TextStyle(
                                  fontFamily: 'Agency FB',
                                  fontSize: 30,
                                  color: Color(0xff707070),
                                ),
                                softWrap: false,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(17.0),
                            border: Border.all(
                              width: 1.0,
                              color: const Color(0xffdedede),
                            ),
                          ),
                          width: 150.0,
                          height: 107.0,
                          margin: const EdgeInsets.only(right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'İçilmeyen Sigara Sayısı',
                                style: TextStyle(
                                  fontFamily: 'Agency FB',
                                  fontSize: 10,
                                  color: Color(0xff707070),
                                ),
                                softWrap: false,
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                '$y',
                                style: const TextStyle(
                                  fontFamily: 'Agency FB',
                                  fontSize: 30,
                                  color: Color(0xff707070),
                                ),
                                softWrap: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16.0),

                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0xffe5e5e5),
                    ),
                  ),
                  height: 71.0,
                  child: Center(
                    child: Text(
                      'Aşama $x',
                      style: const TextStyle(
                        fontFamily: 'Agency FB',
                        fontSize: 24,
                        color: Color(0xff707070),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),

                const SizedBox(height: 16.0),

                const SizedBox(height: 16.0),

              ],
            ),
          ),
        ),
      ),
      drawer: Builder(
        builder: (context) => SidebarMenu(),
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onIndexChanged: _onIndexChanged,
      ),
    );
  }

  Widget _buildTimeBox(String value, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontFamily: 'Helvetica Neue',
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xff00a9de),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Agency FB',
            fontSize: 12,
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}

