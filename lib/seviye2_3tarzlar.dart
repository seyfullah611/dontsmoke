import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/NavBar.dart';

import 'package:dontsmokenot/seviye2_3tarzlar1.dart';

import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

class BirakmaTarzi2_3 extends StatefulWidget {
  BirakmaTarzi2_3({
    Key? key,
  }) : super(key: key);

  @override
  State<BirakmaTarzi2_3> createState() => _BirakmaTarzi2_3State();
}

class _BirakmaTarzi2_3State extends State<BirakmaTarzi2_3> {
  int _currentIndex = 0;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // Firebase ile ilgili kodlar kaldırıldı
  // Bu kısıma kullanıcının seviyesini belirleme kodları eklenebilir.
  late int x = 0;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  void _fetchUserLevel() {
    // Firebase ile ilgili kodlar kaldırıldı
    // Bu kısıma kullanıcının seviyesini belirleme kodları eklenebilir.
    // Örneğin: x = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text(
          "Sigara Bırakma Tarzları",
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
                      child: ElevatedButton(
                        onPressed: () async {
                          // Firebase ile ilgili kodlar kaldırıldı

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Seviye2_3_1()) as Route<Object?>);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          minimumSize: Size(double.infinity, 60.0),
                          primary: Color(0xFFD3EFDE),
                        ),
                        child: Text(
                          'Kademeli Bırakma',
                          style: TextStyle(color: Color(0xFF5E816B)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // Diğer butonlar burada...
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
