import 'package:dontsmokenot/seviye3.dart';
import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:dontsmokenot/seviye2_3tarzlar.dart';
import 'package:dontsmokenot/seviye2_4motivasyon.dart';
import './seviye2_1vucudumdakidegisiklikler.dart';
import './seviye2_5basariykuleri.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

class Seviye2 extends StatefulWidget {
  Seviye2({Key? key}) : super(key: key);

  @override
  State<Seviye2> createState() => _Seviye2State();
}

class _Seviye2State extends State<Seviye2> {
  int _currentIndex = 50;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  late int x = 500;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  void _fetchUserLevel() {
    // Firebase ile ilgili kodları kaldırıldı
    // Bu kısıma kullanıcının seviyesini belirleme kodları eklenebilir.
    // Örneğin: x = 2;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD3EFDE),
          title: Text("Niyet Aşaması",
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
                          child: Row(
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: x <= 1
                                        ? Color(0xFF5e816b).withOpacity(0.5) // 50% opacit
                                        : Color(0xFF5e816b), // 100% opacity
                                  ),
                                ),


                                SizedBox(width: 10.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed:  () async {

                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (_) => Vucudumdakidegisikler2_1()) as Route<Object?>);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      minimumSize: Size(double.infinity, 60.0),
                                      backgroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                              (states) {
                                            if (x == 0) {
                                              return Color(0xFFD3EFDE).withOpacity(0.5);
                                            } else {
                                              return Color(0xFFD3EFDE);
                                            }
                                          }).resolve({}),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sigarayı Bıraktıktan Sonra Meydana Gelen Olumlu Değişiklikler',
                                        style: TextStyle(

                                          color: Color(0xFF5E816B),
                                          fontFamily: 'Helvetica',
                                        ),
                                      ),
                                    ),


/*
                            child: Text(
                                'Sigarayı Bıraktıktan Sonra Meydana Gelen Olumlu Değişiklikler',
                              style: TextStyle(
                                  color: Color(0xFF5E816B)
                              ),),*/




                                  ),
                                ),
                              ]
                          ),),

                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          child: Row(
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: x <= 0
                                        ? Color(0xFF5e816b).withOpacity(0.5) // 50% opacit
                                        : Color(0xFF5e816b), // 100% opacity
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: x >= 0? () async {

                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (_) => Motivasyon()) as Route<Object?>);
                                    }:null,
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      minimumSize: Size(double.infinity, 60.0),
                                      backgroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                              (states) {
                                            if (x == 0) {
                                              return Color(0xFFD3EFDE).withOpacity(0.5);
                                            } else {
                                              return Color(0xFFD3EFDE);
                                            }
                                          }).resolve({}),
                                    ),

                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Değişime İlişkin Motivasyon',
                                        style: TextStyle(

                                          color: Color(0xFF5E816B),
                                          fontFamily: 'Helvetica',
                                        ),
                                      ),
                                    ),

                                  ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: 20.0),

                        Container(
                          width: double.infinity,
                          child: Row(
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: x <= 0
                                        ?Color(0xFF5e816b).withOpacity(0.9)
                                    // 50% opacit
                                        : Color(0xFF5e816b), // 100% opacity
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: x >= 0? () async {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (_) => BirakmaTarzi2_3()) as Route<Object?>);
                                    }:null,
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      minimumSize: Size(double.infinity, 60.0),
                                      backgroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                              (states) {
                                            if (x <= 0) {

                                              return Color(0xFFD3EFDE).withOpacity(0.8);
                                            }else if (x == 0) {
                                              return Color(0xFFD3EFDE).withOpacity(0.9);
                                            }else {
                                              return Color(0xFFD3EFDE);
                                            }
                                          }).resolve({}),
                                    ),

                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sigarayı Bırakma Tarzları',
                                        style: TextStyle(

                                          color: Color(0xFF5E816B),
                                          fontFamily: 'Helvetica',
                                        ),
                                      ),
                                    ),

                                  ),
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: Row(
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: x <= 0
                                        ? Color(0xFF5e816b).withOpacity(0.5)
                                        : Color(0xFF5e816b), // 100% opacity
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: x >= 0 ? () async {

                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (_) => BasariOykuleri2_5()) as Route<Object?>);
                                    }:null,
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      minimumSize: Size(double.infinity, 60.0),
                                      backgroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                              (states) {
                                            if (x <=0) {
                                              return Color(0xFFD3EFDE).withOpacity(0.5);
                                            } else {
                                              return Color(0xFFD3EFDE);
                                            }
                                          }).resolve({}),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Başarı Öyküleri',
                                        style: TextStyle(

                                          color: Color(0xFF5E816B),
                                          fontFamily: 'Helvetica',
                                        ),
                                      ),
                                    ),
                                  ),
                                ), ]),),


                        SizedBox(height: 20.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: x >= 0?() async {
                              /*    final canAccessLevel3 =
                                  await LevelAuth.hasAccessToLevel('3');
                              if (canAccessLevel3) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Zaten Seviye 3 erişimine sahipsiniz!'),
                                  ),
                                );
                              } else {*/

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Seviye güncellendi!'),
                                ),

                              );
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seviye3()) as Route<Object?>);
                              // }
                            }:null,
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              minimumSize: Size(double.infinity, 60.0),
                              primary: Color(0xFFD3EFDE),

                            ),
                            child: Text('Sonraki Seviye',
                              style: TextStyle(
                                  color: Color(0xFF5E816B)
                              ),),
                          ),
                        ),
                      ],
                    ),
                  )

                //-------------------
              ),
            ),

          ],
        ));
  }


}