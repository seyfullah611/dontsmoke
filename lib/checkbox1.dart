import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'anasayfa.dart';

class Checkbox1 extends StatefulWidget {
  const Checkbox1({Key? key}) : super(key: key);

  @override
  _Checkbox1State createState() => _Checkbox1State();
}

class _Checkbox1State extends State<Checkbox1> {
  final RxList<int> selected = RxList<int>([]);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/anasayfa.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: screenSize.height,
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        CheckboxListTile(
                          title: const Text(
                            "6 ay içinde sigarayı bırakma girişimim oldu",
                            style: TextStyle(color: Colors.black),
                          ),
                          value: selected.contains(1),
                          activeColor: Colors.lightBlueAccent,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                if (!selected.contains(1)) {
                                  selected.add(1);
                                }
                              } else {
                                if (selected.contains(1)) {
                                  selected.remove(1);
                                }
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            "Sigarayı 6 ay içinde bırakmaya niyetim var",
                            style: TextStyle(color: Colors.black),
                          ),
                          value: selected.contains(2),
                          activeColor: Colors.lightBlueAccent,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                if (!selected.contains(2)) {
                                  selected.add(2);
                                }
                              } else {
                                if (selected.contains(2)) {
                                  selected.remove(2);
                                }
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            "Sigarayı 1 ay içerisinde bırakacak motivasyona da sahibim",
                            style: TextStyle(color: Colors.black),
                          ),
                          value: selected.contains(3),
                          activeColor: Colors.lightBlueAccent,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                if (!selected.contains(3)) {
                                  selected.add(3);
                                }
                              } else {
                                if (selected.contains(3)) {
                                  selected.remove(3);
                                }
                              }
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            "Sigarayı bırakmayı bugünden itibaren başlatmak istiyorum",
                            style: TextStyle(color: Colors.black),
                          ),
                          value: selected.contains(4),
                          activeColor: Colors.lightBlueAccent,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                if (!selected.contains(4)) {
                                  selected.add(4);
                                }
                              } else {
                                if (selected.contains(4)) {
                                  selected.remove(4);
                                }
                              }
                            });
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Seçilen checkbox değerlerini kullanabilirsiniz
                            if (kDebugMode) {
                              print(selected);
                            }

                            // Anasayfaya geçiş yapma
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_) => Anasayfa(),
                              ) as Route<Object?>,
                            );
                          },
                          child: const Text('Üyeliği Tamamla'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Controller extends GetxController {
  var checkBool = false.obs;
}
