import 'package:flutter/material.dart';


class Seviye1_1_3 extends StatefulWidget {

  @override
  State<Seviye1_1_3> createState() => _Seviye1_1_3State();
}

class _Seviye1_1_3State extends State<Seviye1_1_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text('Yol Açtığı Hastalıklar',
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.red,
                  child: Image.asset('images/seviye1images/icerik2/5.png',),

                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),

                )


              ],
            ),
          ),
        ],
      ),
    );
  }
}