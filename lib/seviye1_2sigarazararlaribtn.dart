import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

import 'package:flutter/material.dart';

import './seviye1_2ybtn_1.dart';

import './seviye1_2ybtn_3.dart';
import './seviye1_2ybtn_2.dart';
import './seviye1_2ybtn_4.dart';

import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

class Sigarazararlari1_2 extends StatefulWidget {
  Sigarazararlari1_2({
    Key? key,
  }) : super(key: key);

  @override
  State<Sigarazararlari1_2> createState() => _Sigarazararlari1_2State();
}





class _Sigarazararlari1_2State extends State<Sigarazararlari1_2> {
  int _currentIndex = 0;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    }); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD0F0C0),
          title: Text("Sigaranın Zararları" ,
            style: TextStyle(
                color: Color(0xFF5E816B)
            ),),
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

                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Sigarazarari1_21()) as Route<Object?>);

                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                                primary: Color(0xFFD0F0C0),
                            ),

                            child: Text('Fiziksel Sağlık Üzerindeki Zararlar',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E816B),
                                fontFamily: 'Helvetica',
                              ),),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {

                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Ekonomikzarar1_22()) as Route<Object?>);

                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),

                                ),
                                minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFD0F0C0),
                            ),

                            child: Text('Sigaranın Ekonomik Zararları',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E816B),
                                fontFamily: 'Helvetica',
                              ),),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {

                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Ruhsagligi()) as Route<Object?>);


                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFD0F0C0),
                            ),
                            child: Text('Ruh Sağlığı Üzerine Zararı',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E816B),
                                fontFamily: 'Helvetica',
                              ),),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {

                              Navigator.of(context).push(MaterialPageRoute(builder: (_) =>Cevrezarari()) as Route<Object?>);


                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFD0F0C0),
                            ),
                            child: Text('Çevre Üzerindeki Zararları',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5E816B),
                                fontFamily: 'Helvetica',
                              ),),
                          ),
                        ),
                        SizedBox(height: 20.0),

                        SizedBox(height: 20.0),
                      ],
                    ),
                  )

                //-------------------
              ),

            ),

          ],
        )

    );

  }
}
