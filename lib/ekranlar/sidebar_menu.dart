
import 'package:dontsmokenot/seviye2.dart';
import 'package:dontsmokenot/seviye3.dart';
import 'package:dontsmokenot/seviye4.dart';
import 'package:dontsmokenot/seviye5.dart';
import 'package:flutter/material.dart';
import 'package:dontsmokenot/anasayfa.dart';
import 'package:dontsmokenot/seviye1.dart';

class SidebarMenu extends StatefulWidget {
  @override
  _SidebarMenuState createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  late int x = 10;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  void _fetchUserLevel() async {
    // Firebase veritabanından level bilgisini almak için kullanılan kodları kaldırın
    // ...

    // Örnek olarak, aşağıdaki setState ile x değişkenine değeri atayabilirsiniz:
    setState(() {
      x = 1; // Bu değeri Firebase veritabanından alınan değerle değiştirin
    });
  }

  int _selectedIndex = 0;


  List<bool> _levelEnabled = [true, true, true, true, true, true, true, true];

  Color _getListItemColor(int index) {
    if (_selectedIndex == index) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (x <= _levelEnabled.length) {
      for (int i = 0; i < _levelEnabled.length; i++) {
        if (i < x) {
          _levelEnabled[i] = true;
        } else {
          _levelEnabled[i] = false;
        }
      }
    }

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFADD8E6),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SizedBox(
        height: screenHeight * 1.0,
        width: screenWidth * 0.5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFADD8E6),
              ),
              child: Text('Menü'),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Color(0xFF5E816B)),
              title: Text('Ana Sayfa'),
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anasayfa()) as Route<Object?>,
                );
              },
              textColor: _getListItemColor(0),
            ),
            ListTile(
              leading: x >= 0 ? Icon(Icons.lock_open) : Icon(Icons.lock),
              title: Text('Niyet Öncesi'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Seviye1()) as Route<Object?>,
                );
              },
              textColor: _getListItemColor(0),
            ),
            ListTile(
              leading: x >= 0 ? Icon(Icons.lock_open) : Icon(Icons.lock),
              title: Text('Niyet'),
              selected: _selectedIndex == 0,
              enabled: _levelEnabled[0],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Seviye2()) as Route<Object?>,
                );
              },
              textColor: _getListItemColor(0),
            ),
            ListTile(
              leading: x >= 0 ? Icon(Icons.lock_open) : Icon(Icons.lock),
              title: Text('Hazırlık '),
              selected: _selectedIndex == 0,
              enabled: _levelEnabled[0],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Seviye3()),
                );
              },
              textColor: _getListItemColor(3),
            ),
            ListTile(
              leading: x >= 0 ? Icon(Icons.lock_open) : Icon(Icons.lock),
              title: Text('Eyleme Geçme '),
              selected: _selectedIndex == 0,
              enabled: _levelEnabled[0],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Seviye4()) as Route<Object?>,
                );
              },
              textColor: _getListItemColor(0),
            ),
            ListTile(
              leading: x >= 0 ? Icon(Icons.lock_open) : Icon(Icons.lock),
              title: Text('Değişimi Sürdürme'),
              selected: _selectedIndex == 0,
              enabled: _levelEnabled[0],
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Seviye5()) as Route<Object?>,
                );
              },
              textColor: _getListItemColor(5),
            ),


          ],
        ),
      ),
    );
  }
}
