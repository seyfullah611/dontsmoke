import 'package:dontsmokenot/seviye2.dart';
import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/NavBar.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'seviye1_1sigarakullanim.dart';
import 'seviye1_2sigarazararlaribtn.dart';
import 'seviye1_3sizdeyarattigietkiler.dart';
import 'seviye1_4dogrubilinenyanlislar.dart';



class Seviye1 extends StatefulWidget {
  const Seviye1({Key? key}) : super(key: key);

  @override
  State<Seviye1> createState() => _Seviye1State();
}

class _Seviye1State extends State<Seviye1> {
  int _currentIndex = 50;

  void _onIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  late int x = 50;

  @override
  void initState() {
    super.initState();
    _fetchUserLevel();
  }

  void _fetchUserLevel() async {

  }

  bool button1Clicked = true;
  bool button2Clicked = true;
  bool button3Clicked = true;
  bool button4Clicked = true;
  bool button6Enabled = true;

  void checkButtonStates() {
    if (button1Clicked && button2Clicked && button3Clicked && button4Clicked) {
      setState(() {
        button6Enabled = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    Widget buildLeftButton(Widget button) {
      return Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: button,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text(
          "Niyet Öncesi",
          style: TextStyle(color: Color(0xFF5E816B)),
        ),
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
                        child: Row(children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: x <= 1
                                  ? Color(0xFF5e816b).withOpacity(0.2)
                                  : x == 1
                                  ? Color(0xFF5e816b).withOpacity(0.4)
                                  : x == 1
                                  ? Color(0xFF5e816b).withOpacity(0.7)
                                  : Color(0xFF5e816b), // 100% opacity
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  button1Clicked = true;
                                });
                                checkButtonStates();

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SigaraKullanim1_1()) as Route<Object?>);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minimumSize: Size(double.infinity, 60.0),
                                backgroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                        (states) {
                                      if (x == 1) {
                                        Color blue = Color.fromRGBO(208, 240, 192,
                                            0.25); // #dfd0c0, 25% opaklık
                                        Color white = Colors.white;
                                        double factor =
                                        0.25; // 25% mavi için faktörü 0.25 olarak ayarlayın
                                        return Color.lerp(blue, white, factor);
                                      } else if (x == 1) {
                                        return Color.fromRGBO(223, 208, 192,
                                            0.5); // #dfd0c0, 50% opaklık
                                      } else if (x == 1) {
                                        return Color.fromRGBO(223, 208, 192,
                                            0.7); // #dfd0c0, 70% opaklık
                                      } else {
                                        return Color.fromRGBO(208, 240, 192,
                                            1.0); // #dfd0c0, tamamen opak
                                      }
                                    }).resolve({}),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sigara Kullanımı',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5E816B),
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
                              color: x <= 1
                                  ? Color(0xFF5e816b).withOpacity(0.2)
                                  : x == 1
                                  ? Color(0xFF5e816b).withOpacity(0.4)
                                  : x == 1
                                  ? Color(0xFF5e816b).withOpacity(0.7)
                                  : Color(0xFF5e816b), // 100% opacity
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: x >= 4
                                  ? () async {
                                setState(() {
                                  button2Clicked = true;
                                });
                                checkButtonStates();
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            Sigarazararlari1_2()) as Route<Object?>);
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
                                      if (x == 5) {
                                        Color blue =
                                        Color.fromRGBO(208, 240, 192, 0.25);
                                        Color white = Colors.white;
                                        double factor =
                                        0.25; // set the factor to 0.25 for 25% blue
                                        return Color.lerp(blue, white, factor);
                                      } else if (x == 6) {
                                        return Color.fromRGBO(208, 240, 192, 0.5);
                                      } else if (x == 7) {
                                        return Color.fromRGBO(223, 208, 192, 0.75);
                                      } else {
                                        return Color.fromRGBO(208, 240, 192, 1.0);
                                      }
                                    }).resolve({}),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sigaranın Zararları',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5E816B),
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
                                  ? Color(0xFF5e816b).withOpacity(0.5)
                                  : Color(0xFF5e816b), // 100% opacity
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: x >= 0
                                  ? () async {

                                setState(() {
                                  button3Clicked = true;
                                });
                                checkButtonStates();
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            SizdeEtkileri1_3()) as Route<Object?>);
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
                                      if (x == 8) {
                                        return Color.fromRGBO(208, 240, 192, 0.5);
                                      } else {
                                        return Color.fromRGBO(208, 240, 192, 1.0);
                                      }
                                    }).resolve({}),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Sigaranın Sizde Yarattığı Etkiler',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5E816B),
                                    fontFamily: 'Helvetica',
                                  ),
                                ),
                              ),

                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 20.0),

                      //-----------------------------------------------------------------

//-----------------------------------------------
                      Container(
                        width: double.infinity,
                        child: Row(children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: x <= 9
                                  ? Color(0xFF5e816b)
                                  .withOpacity(0.25) // 25% opacity
                                  : x == 10
                                  ? Color(0xFF5e816b)
                                  .withOpacity(0.5) // 50% opacity
                                  : x == 11
                                  ? Color(0xFF5e816b)
                                  .withOpacity(0.10) // 75% opacity
                                  : Color(0xFF5e816b), // 100% opacity
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: x >= 0
                                  ? () async {

                                setState(() {
                                  button4Clicked = true;
                                });
                                checkButtonStates();
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            Dogrubilinenyanlislar1_4()) as Route<Object?>);
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
                                      if (x == 9) {
                                        return Color.fromRGBO(208, 240, 192, 0.5);
                                      } else {
                                        return Color.fromRGBO(208, 240, 192, 1.0);
                                      }
                                    }).resolve({}),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Doğru Bilinen Yanlışlar',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5E816B),
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
                        child: ElevatedButton(
                          onPressed: x >= 10
                              ? () async {


                            // await LevelAuth.updateLevel(newLevel: 2);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Seviye güncellendi!'),
                              ),
                            );
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seviye2()) as Route<Object?>);
                          }
                              : null,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            minimumSize: Size(double.infinity, 60.0),
                            primary: Color(0xFFD0F0C0),
                          ),
                          child: Text(
                            'Sonraki Seviye',
                            style: TextStyle(
                              color: Color(0xFF5E816B),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              //textAlign: TextAlign.left,
                            ),
                          ),
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
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onIndexChanged: _onIndexChanged,
      ),
    );
  }

}