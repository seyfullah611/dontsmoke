import 'package:dontsmokenot/seviye1.dart';
import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

import './anasayfa.dart';
import 'package:dontsmokenot/seviye3_3basetmeyontemleri_1.dart';
import 'package:dontsmokenot/seviye3_3basetmeyontemleri_2.dart';
import 'package:dontsmokenot/seviye3_3basetmeyontemleri_3.dart';

class SigaraBasEtmeYontemleri3_3 extends StatelessWidget {
  SigaraBasEtmeYontemleri3_3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF4C2C2),
          title: Text("Sigara İhtiyacı Oluşturan Faktörler",
            style: TextStyle(
                color: Color(0xFFB66A6B)
            ),),
        ),
        drawer: Builder(
          builder: (context) => SidebarMenu(),
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
                                  builder: (_) => SigaraBasEtmeYntemleri3_3_1()) as Route<Object?>);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFF4C2C2),

                            ),

                            child: Text('Psikolojik Nedenler'),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {

                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => SigaraBasEtmeYntemleri3_3_2()) as Route<Object?>);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),

                                ),
                                minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFF4C2C2),
                            ),

                            child: Text('Sosyal Nedenler'),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => SigaraBasEtmeYntemleri3_3_3()) as Route<Object?>);},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFF4C2C2),
                            ),
                            child: Text(
                                'Fiziksel Nedenler'),
                          ),
                        ),


                        SizedBox(height: 20.0),
                      ],
                    ),
                  )

                //-------------------
              ),

            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Butona tıklanınca açılacak sayfaya gitmek için gereken kodlar buraya yazılabilir
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Anasayfa()) as Route<Object?>);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(27.0),
                    ),
                    side: BorderSide(
                        width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                child: Container(
                  width: 132.0,
                  height: 71.0,
                  child: Icon(Icons.home),

                ),

              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Butona tıklanınca açılacak sayfaya gitmek için gereken kodlar buraya yazılabilir
                  //Navigator.of(context).push(MaterialPageRoute(builder: (_) => XDAama31()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(27.0),
                    ),
                    side: BorderSide(
                        width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                child: Container(
                  width: 132.0,
                  height: 71.0,
                  child: Icon(Icons.book),

                ),

              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Butona tıklanınca açılacak sayfaya gitmek için gereken kodlar buraya yazılabilir
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Seviye1()) as Route<Object?>);
                  //XDSigaraKullanm()
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0.0),
                    ),
                    side: BorderSide(
                        width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                child: Container(
                  width: 132.0,
                  height: 71.0,
                  child: Icon(Icons.timeline),

                ),

              ),
            ),
          ],
        )

    );
  }
}
