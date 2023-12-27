import 'package:flutter/material.dart';

class Seviye2_3_4 extends StatefulWidget {
  @override
  State<Seviye2_3_4> createState() => _Seviye2_3_4State();
}

class _Seviye2_3_4State extends State<Seviye2_3_4> {
  final List<String> texts = [
    'Sigara içme arzun gelince 10 dakika daha bekleyebileceğini kendine hatırlat.',
    'Uygun bir bedensel ve zihinsel meşguliyet bul',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text('Dürtü/Arzu Kontrolü',
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: texts.map((text) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFFD3EFDE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.black54,
                            radius: 8,
                          ),
                          title: Text(
                            text,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: 'Helvetica',
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // içerik görselleri
          Container(
           // width: 160.0,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/seviye1images/icerik1/1.png'),
                //Image.asset( '1.jpg'),
                //Image(image: AssetImage('assets/images/seviye1images/1.png')),
                //Text('Yemek', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            // width: 160.0,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/seviye1images/icerik1/2.png'),
                //Image.asset( '1.jpg'),
                //Image(image: AssetImage('assets/images/seviye1images/1.png')),
                //Text('Yemek', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            // width: 160.0,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/seviye1images/icerik1/3.png'),
                //Image.asset( '1.jpg'),
                //Image(image: AssetImage('assets/images/seviye1images/1.png')),
                //Text('Yemek', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          //içerik yazıları
          Container(
            width: 160.0,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.local_shipping, size: 50.0, color: Colors.white),
                Text('Kargo', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.attach_money, size: 50.0, color: Colors.white),
                Text('Para', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.beach_access, size: 50.0, color: Colors.white),
                Text('Tatil', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
