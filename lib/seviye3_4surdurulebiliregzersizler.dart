import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:flutter/material.dart';

import './seviye3_4_1nefes.dart';
import './stres_yonetimi.dart';
import './gevseme.dart';
import './meditaasyon.dart';
import './alternatif_aktiviteler.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';


class SurdyrylebilirEgzersizler3_3 extends StatefulWidget {
  SurdyrylebilirEgzersizler3_3({
    Key? key,
  }) : super(key: key);

  @override
  State<SurdyrylebilirEgzersizler3_3> createState() => _SurdyrylebilirEgzersizler3_3State();
}

class _SurdyrylebilirEgzersizler3_3State extends State<SurdyrylebilirEgzersizler3_3> {
  int _currentIndex = 0;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    }); }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFADD8E6),
          title: Text("Sigara ile Başa Çıkma"),
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
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => NefesEg()) as Route<Object?>);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ), backgroundColor: Color(0xFFADD8E6),
                                minimumSize: Size(double.infinity, 60.0),
                            ),
                            child: Text('Nefes Egzersizi'),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => Gevseme()) as Route<Object?>);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ), backgroundColor: Color(0xFFADD8E6),
                                minimumSize: Size(double.infinity, 60.0),
                            ),
                            child: Text('Gevşeme Egzersizi'),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed:() {

                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StresYonetimi()) as Route<Object?>);
                          },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ), backgroundColor: Color(0xFFADD8E6),
                                minimumSize: Size(double.infinity, 60.0),
                            ),
                            child: Text('Stres Yönetimi'),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) =>
                                      Meditaasyon()) as Route<Object?>);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ), backgroundColor: Color(0xFFADD8E6),
                                minimumSize: Size(double.infinity, 60.0),
                            ),
                            child: Text('Meditasyon'),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => AlternatifAktiviteler()) as Route<Object?>);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ), backgroundColor: Color(0xFFADD8E6),
                                minimumSize: Size(double.infinity, 60.0),
                            ),
                            child: Text('Sigara İçmeye Karşı Aktiviteler'),
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  )

                  //-------------------
                  ),
            ),

          ],
        ));
  }

  void onPressedButton() {
    print("Geliştirme Aşamasındadır");
  }
}
