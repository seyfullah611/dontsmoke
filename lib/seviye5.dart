import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'package:flutter/material.dart';

import 'package:dontsmokenot/seviye3_4surdurulebiliregzersizler.dart';
import 'package:dontsmokenot/seviye5_1.dart';
import 'package:dontsmokenot/seviye5_3.dart';
import 'package:dontsmokenot/seviye5_4.dart';


class Seviye5 extends StatefulWidget {
  const Seviye5({
    Key? key,
  }) : super(key: key);

  @override
  State<Seviye5> createState() => _Seviye5State();
}

class _Seviye5State extends State<Seviye5> {
  int _currentIndex = 0;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  late int x = 100;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  void _fetchUserLevel() async {
    // Remove Firebase-related logic to fetch user level
    // Set the value of x accordingly
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBD7C),
        title: Text(
          "Değişimi Sürdürme",
          style: TextStyle(color: Color(0xFFA75400)),
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
                    Container(
                      width: double.infinity,
                      child: Row(children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: x <= 0
                                ? Color(0xFFa75400).withOpacity(0.5)
                                : Color(0xFFa75400), // 100% opacity
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: x >= 0
                                ? () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          SigaraAliskanligaDonusumu()) as Route<Object?>);
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
                                  if (x == 0) {
                                    return Color(0xFFFFBD7C).withOpacity(0.5);
                                  } else {
                                    return Color(0xFFFFBD7C);
                                  }
                                },
                              ).resolve({}),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Sigara Bırakmanın Alışkanlığa Dönüşmesi',
                                style: TextStyle(
                                  color: Color(0xFFA75400),
                                  fontFamily: 'Helvetica',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: double.infinity,
                      child: Row(children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: x <=0
                                ? Color(0xFFa75400).withOpacity(0.5)
                                : Color(0xFFa75400), // 100% opacity
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: x >= 0
                                ? () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          SurdyrylebilirEgzersizler3_3()) as Route<Object?>);
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
                                  if (x == 32) {
                                    return Color(0xFFFFBD7C).withOpacity(0.5);
                                  } else {
                                    return Color(0xFFFFBD7C);
                                  }
                                },
                              ).resolve({}),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Nüksetme Riskiyle Baş Etme',
                                style: TextStyle(
                                  color: Color(0xFFA75400),
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
                      child: Row(children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: x <=0
                                ? Color(0xFFa75400).withOpacity(0.5)
                                : Color(0xFFa75400), // 100% opacity
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: x >= 0
                                ? () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => AddStoryPage()) as Route<Object?>,
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
                                  if (x == 33) {
                                    return Color(0xFFFFBD7C).withOpacity(0.5);
                                  } else {
                                    return Color(0xFFFFBD7C);
                                  }
                                },
                              ).resolve({}),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Bırakmaya Dönük Kişisel Öykü',
                                style: TextStyle(
                                  color: Color(0xFFA75400),
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
                      child: Row(children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: x <= 0
                                ? Color(0xFFa75400).withOpacity(0.5)
                                : Color(0xFFa75400),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: x >= 0
                                ? () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => ChatForum()) as Route<Object?>);
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
                                  if (x == 0) {
                                    return Color(0xFFFFBD7C).withOpacity(0.5);
                                  } else {
                                    return Color(0xFFFFBD7C);
                                  }
                                },
                              ).resolve({}),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Forum',
                                style: TextStyle(
                                  color: Color(0xFFA75400),
                                  fontFamily: 'Helvetica',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
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
