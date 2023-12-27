import 'package:dontsmokenot/ekranlar/NavBar.dart';

import 'package:dontsmokenot/seviye3_5Motivasyon.dart';

import 'package:flutter/material.dart';

import './seviye3_3birakmatarihiplanlama.dart';

import './seviye3_4surdurulebiliregzersizler.dart';

import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

class Seviye3 extends StatefulWidget {
  const Seviye3({
    Key? key,
  }) : super(key: key);

  @override
  State<Seviye3> createState() => _Seviye3State();
}

class _Seviye3State extends State<Seviye3> {
  int _currentIndex = 200;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  late int x = 200;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  void _fetchUserLevel() async {
    // Kullanıcı seviyesi getirme işlemleri eklenebilir
  }

  int _currentLevel = 30;

  get kullaniciId => null;

  @override
  Widget build(BuildContext context) {
    Widget buildLeftButton(Widget button) {
      return Row(
        children: [
          Container(
            width: 20.0, // Ayarlayabilirsiniz
            height: 20.0, // Ayarlayabilirsiniz
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // Ayarlayabilirsiniz
            ),
          ),
          SizedBox(width: 10.0), // Ayarlayabilirsiniz
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: button,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF4C2C2),
        title: Text(
          "Hazırlık ",
          style: TextStyle(color: Color(0xFFB66A6B)),
        ),
      ),
      drawer: Builder(
        builder: (context) => SidebarMenu(),
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onIndexChanged: _onIndexChanged,
      ),
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [



                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      child: Row(children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: x <= 0
                                ? Color(0xFFb66a6b).withOpacity(0.5)
                                : Color(0xFFb66a6b),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: x >= 0
                                ? () async {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            BirakmaTarihiPlanlamaPage(),
                                      ) as Route<Object?>,
                                    );
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              minimumSize: Size(double.infinity, 60.0),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                      (states) {
                                if (x <= 0) {
                                  return Color(0xFFF4C2C2).withOpacity(0.5);
                                } else {
                                  return Color(0xFFF4C2C2);
                                }
                              }).resolve({}),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Sigarayı Bırakma Tarihinin/Zamanının Planlanması',
                                style: TextStyle(
                                  color: Color(0xFFB66A6B),
                                  fontFamily: 'Helvetica',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: x <= 23
                                  ? Color(0xFFb66a6b).withOpacity(0.5)
                                  : Color(0xFFb66a6b),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: x >=0
                                  ? () async {
                                      // İlgili butona tıklanınca yapılacak işlemler
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => SurdyrylebilirEgzersizler3_3()) as Route<Object?>);
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                                    if (x <= 0) {
                                      return Color(0xFFF4C2C2).withOpacity(0.5);
                                    } else {
                                      return Color(0xFFF4C2C2);
                                    }
                                  },
                                ).resolve({}),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sigara İçme İsteğiyle/Arzusuyla Başa Çıkma',
                                  style: TextStyle(
                                    color: Color(0xFFB66A6B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: x <= 0
                                  ? Color(0xFFb66a6b).withOpacity(0.5)
                                  : Color(0xFFb66a6b),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: x >= 0
                                  ? () async {
                                      // İlgili butona tıklanınca yapılacak işlemler
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => MotivationPage()) as Route<Object?>);
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                                    if (x <= 0) {
                                      return Color(0xFFF4C2C2).withOpacity(0.5);
                                    } else {
                                      return Color(0xFFF4C2C2);
                                    }
                                  },
                                ).resolve({}),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Motivasyon',
                                  style: TextStyle(
                                    color: Color(0xFFB66A6B),
                                    fontFamily: 'Helvetica',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: x >= 0
                            ? () async {
                                // İlgili butona tıklanınca yapılacak işlemler
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          minimumSize: Size(double.infinity, 60.0),
                          primary: Color(0xFFF4C2C2),
                        ),
                        child: Text(
                          'Sonraki Seviye',
                          style: TextStyle(
                            color: Color(0xFFB66A6B),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
