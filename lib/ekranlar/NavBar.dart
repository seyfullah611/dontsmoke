import 'dart:math';

import 'package:dontsmokenot/anasayfa.dart';
import 'package:dontsmokenot/seviye1.dart';
import 'package:dontsmokenot/seviye2.dart';
import 'package:dontsmokenot/seviye3.dart';
import 'package:dontsmokenot/seviye3_1kendiniizlme.dart';
import 'package:dontsmokenot/seviye4.dart';
import 'package:dontsmokenot/seviye5.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  NavBar({required this.currentIndex, required this.onIndexChanged});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int x = 1;
  final List<String> motivationImages = [
    'images/seviye1images/motivasyon/1.png',
    'images/seviye1images/motivasyon/3.png',
    'images/seviye1images/motivasyon/6.png',
    'images/seviye1images/motivasyon/7.png',
    'images/seviye1images/motivasyon/8.png',
    'images/seviye1images/motivasyon/16.png',
    'images/seviye1images/motivasyon/17.png',
  ];

  final List<String> motivationTexts = [
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Anasayfa(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ) as Route<Object?>,
              );
            },
            child: Icon(Icons.home, color: Color(0xFFADD8E6)),
          ),
          InkWell(
            onTap: () {
              switch (x) {
                case 1:
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Seviye1(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                      },
                    ) as Route<Object?>,
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Seviye2(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                      },
                    ) as Route<Object?>,
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seviye3()) as Route<Object?>,
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seviye4()) as Route<Object?>,
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seviye5()) as Route<Object?>,
                  );
                  break;
                default:
                  break;
              }
            },
            child: Icon(Icons.stars, color: Color(0xFFADD8E6)),
          ),
          InkWell(
            onTap: x >= 2
                ? () async {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => QuizPage(userId: AutofillHints.username),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return ScaleTransition(
                      scale: Tween<double>(
                        begin: 0.0,
                        end: 1.0,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ) as Route<Object?>,
              );
            }
                : null,
            child: Icon(Icons.book, color: Color(0xFFADD8E6)),
          ),
          InkWell(
            onTap: x >= 3
                ? () async {
              final random = Random();
              final isImage = random.nextBool();

              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Motivasyon'),
                    content: Column(
                      children: [
                        isImage
                            ? Image.asset(
                          motivationImages[random.nextInt(motivationImages.length)],
                        )
                            : Text(
                          motivationTexts[random.nextInt(motivationTexts.length)],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Kapat'),
                      ),
                    ],
                  );
                },
              );

              if (x <= 2) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Bilgi'),
                      content: Text('Seviye 3 te açılacaktır'),
                      actions: [],
                    );
                  },
                );
              }
            }
                : null,
            child: Icon(Icons.lightbulb, color: Color(0xFFADD8E6)),
          ),
        ],
      ),
    );
  }
}
