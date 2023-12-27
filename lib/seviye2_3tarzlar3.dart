import 'package:flutter/material.dart';

class Seviye2_3_3 extends StatefulWidget {
  @override
  State<Seviye2_3_3> createState() => _Seviye2_3_3State();
}

class _Seviye2_3_3State extends State<Seviye2_3_3> {
  ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text(
          'Rutinleri Değiştirme',
          style: TextStyle(
            color: Color(0xFF5E816B),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('images/seviye1images/icerik2/22.png'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('images/seviye1images/icerik2/23.png'),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: _scrollToBottom,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 16.0),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 36.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
