import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'seviye1_1sigarakullanimi1.dart';
import 'seviye1_1sigarakullanimi2.dart';
import 'seviye1_1sigarakullanimi3.dart';
import 'seviye1_1sigarakullanimi4.dart';

class SigaraKullanim1_1 extends StatefulWidget {
  SigaraKullanim1_1({
    Key? key,
  }) : super(key: key);

  @override
  State<SigaraKullanim1_1> createState() => _SigaraKullanim1_1State();
}

class _SigaraKullanim1_1State extends State<SigaraKullanim1_1> {
  int _currentIndex = 0;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
    title: Text(
    "Sigara Kullanımı",
    style: TextStyle(color: Color(0xFF5E816B)),
    ),
    ),
    drawer: Builder(
    builder: (context) => SidebarMenu(),
    ),
    bottomNavigationBar: NavBar(
    currentIndex: _currentIndex,
    onIndexChanged: _onIndexChanged,
    ),
    backgroundColor: const Color(0xFFFFFFFF),
    body: Stack(
    children: [
    SafeArea(
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    ElevatedButton(
    onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (_) => Seviye1_1_1()) as Route<Object?>);
    },
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    ), backgroundColor: Color(0xFFD0F0C0),
    minimumSize: Size(double.infinity, 60.0),
    ),
    child: Text(
    'Sigara Kullanımına Bağlı Ölüm Oranları',
    style: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Color(0xFF5E816B),
    fontFamily: 'Helvetica',
    ),
    ),
    ),
    SizedBox(height: 10.0                    ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => Seviye1_1_2()) as Route<Object?>);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ), backgroundColor: Color(0xFFD0F0C0),
          minimumSize: Size(double.infinity, 60.0),
        ),
        child: Text(
          'Yaş ve Cinsiyet Göre Sigara İçme Oranları',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5E816B),
            fontFamily: 'Helvetica',
          ),
        ),
      ),
      SizedBox(height: 20.0),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => Seviye1_1_3()) as Route<Object?>);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ), backgroundColor: Color(0xFFD0F0C0),
          minimumSize: Size(double.infinity, 60.0),
        ),
        child: Text(
          'Sigara İçmenin Yol Açtığı Hastalık Oranları',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5E816B),
            fontFamily: 'Helvetica',
          ),
        ),
      ),
      SizedBox(height: 20.0),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => Seviye1_1_4()) as Route<Object?>);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ), backgroundColor: Color(0xFFD0F0C0),
          minimumSize: Size(double.infinity, 60.0),
        ),
        child: Text(
          'Sigaranın İçindeki Zararlı Maddeler',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5E816B),
            fontFamily: 'Helvetica',
          ),
        ),
      ),
      SizedBox(height: 20.0),
    ],
    ),
    ),
    ),

    ),

    ])
    );}
}

