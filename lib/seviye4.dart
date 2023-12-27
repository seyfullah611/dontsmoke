import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'package:dontsmokenot/seviye3_4surdurulebiliregzersizler.dart';
import 'package:dontsmokenot/seviye4_2.dart';
import 'package:dontsmokenot/seviye4_3.dart';
import 'package:dontsmokenot/seviye4_4.dart';
import 'package:dontsmokenot/seviye4_5.dart';
import 'package:dontsmokenot/seviye4_6.dart';
import 'package:dontsmokenot/seviye5.dart';
import 'package:flutter/material.dart';

class Seviye4 extends StatefulWidget {
  const Seviye4({
    Key? key,
  }) : super(key: key);

  @override
  State<Seviye4> createState() => _Seviye4State();
}

class _Seviye4State extends State<Seviye4> {
  int _currentIndex = 0;
  int x = 100;

  get router => null; // Firebase bağlantısı yerine kullanılacak değişken

  @override
  Widget build(BuildContext context) {
    Widget buildLevelButton(int buttonIndex, String buttonText, int newLevel) {
      return Container(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: x <= newLevel
                    ? Color(0xFF792900).withOpacity(0.5)
                    : Color(0xFF792900),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: ElevatedButton(
                onPressed: x >= newLevel
                    ? () {
                  // Butona tıklandığında yapılacak işlemler
                  switch (buttonIndex) {
                    case 1:
                      Navigator.of(context).push(
                          MaterialPageRoute<SurdyrylebilirEgzersizler3_3>(
                            builder: (_) => SurdyrylebilirEgzersizler3_3(),
                            settings: router.RouteInformation(location: '/surdyrylebilirEgzersizler3_3'),
                          ) as Route<Object?>,
                      );
                      break;
                    case 2:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => sigaratetikleme4_2(),
                        ) as Route<Object?>,
                      );
                      break;
                    case 3:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Meydanoku4_3(),
                        ) as Route<Object?>,
                      );
                      break;
                    case 4:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => KendiniOdullendir(),
                        ) as Route<Object?>,
                      );
                      break;
                    case 5:
                    // Bu buton için bir sayfa belirlenmemiş
                      break;
                    case 6:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SosyalDestekPage(),
                        ) as Route<Object?>,
                      );
                      break;
                    case 7:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => MotivasyonDestek(),
                        ) as Route<Object?>,
                      );
                      break;
                    default:
                    // Geçerli bir seviye yoksa bir şey yapma
                      break;
                  }
                }
                    : null,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: Size(double.infinity, 60.0),
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) {
                      if (x <= newLevel) {
                        return Color(0xFFFF9966).withOpacity(0.5);
                      } else {
                        return Color(0xFFFF9966);
                      }
                    },
                  ).resolve({}),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: Color(0xFFB792900),
                      fontFamily: 'Helvetica',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFFF9966),
    title: Text(
    "Eyleme Geçme",
    style: TextStyle(color: Color(0xFFB792900)),
    ),
    ),
    drawer: Builder(
    builder: (context) => SidebarMenu(),
    ),
    bottomNavigationBar: NavBar(
    currentIndex: _currentIndex,
    onIndexChanged: (index) {
    setState(() {
    _currentIndex = index;
    });
    },
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
    buildLevelButton(1, 'Sigara İçme İsteğiyle/Arzusuyla Başa Çıkma', 0),
    SizedBox(height: 10.0),
    buildLevelButton(2, 'Sigara İçmeyi Tetikleyen Durumlardan Uzaklaşma', 0),
    SizedBox(height: 20.0),
    buildLevelButton(3, 'Sigara İçme Düşüncesine Meydan Okuma', 0),
    SizedBox(height: 20.0),
    buildLevelButton(4, 'Kendini Ödüllendirme', 0),
      SizedBox(height: 20.0),
      buildLevelButton(5, 'Kendini İzleme', 0),
      SizedBox(height: 20.0),
      buildLevelButton(6, 'Sosyal Destek', 0),
      SizedBox(height: 20.0),
      buildLevelButton(7, 'Motivasyon ve Öz-Yeterlilik', 0),
      SizedBox(height: 20.0),
      ElevatedButton(
        onPressed: x >= 0
            ? () {
// Sonraki Seviye butonuna tıklama işlemleri
// Örneğin, Seviye5 sayfasına geçiş yapabilirsiniz
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => Seviye5(),
            ) as Route<Object?>,
          );
        }
            : null,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ), backgroundColor: Color(0xFFFF9966),
          minimumSize: Size(double.infinity, 60.0),
        ),
        child: Text(
          'Sonraki Seviye',
          style: TextStyle(color: Color(0xFFB792900)),
        ),
      ),
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
