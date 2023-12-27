import 'package:flutter/material.dart';



class Seviye1_1_4 extends StatefulWidget {
  @override
  State<Seviye1_1_4> createState() => _Seviye1_1_4State();
}
class _Seviye1_1_4State extends State<Seviye1_1_4> {
  bool _isExpanded = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFBFE3B4),
        title: Text(
          'İçindeki Zararlı Maddeler',
          style: TextStyle(
            color: Color(0xFF5E816B),
          ),
        ),
      ),
      body: Column(
          children: <Widget>[
      Expanded(
      child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
      Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'images/seviye1images/icerik4/1.png',
      ),
    ),
    Padding(
    padding: EdgeInsets.symmetric(
    horizontal: MediaQuery.of(context).size.width * 0.05,
    ),
    child: AnimatedContainer(
    duration: Duration(milliseconds: 500),
    height: _isExpanded ? MediaQuery.of(context).size.height : 0,
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.black,
    width: 2.0,
    ),
    borderRadius: BorderRadius.circular(10.0),
    ),
    child: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.all(10.0),
    child: RichText(
    text: TextSpan(
    style: TextStyle(
    fontSize: 15.0,
    color: Colors.grey,
    fontFamily: 'Helvetica',
    ),
    children: [
    TextSpan(
    text:
    '\n- Sigara Dumanında 4000 kimyasal madde var. Tütün dumanındaki tehlikeli kimyasalların farkında mısınız? İşte Bazıları:\n\n',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
      TextSpan(
        text: 'Arsenik',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      TextSpan(
        text:
        ': Fare zehiri ve böcek ilaçlarında kullanılır\n\n',
      ),
      TextSpan(
        text: 'Asetik Asit',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Sirke, saç boyası ve foto geliştirici sıvıda bulunur.\n\n',
    ),
      TextSpan(
        text: ' Aseton',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ' :Boya inceltici ve tırnak cilası çıkarıcıdaki ana bileşen\n\n',
    ),
      TextSpan(
        text: 'Amonyak',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Tipik bir ev temizlik sıvısı\n\n',
    ),
      TextSpan(
        text: ' Benzen',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text: ': Benzinde bulunur\n\n',
    ),
      TextSpan(
        text: ' Bütan',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Çakmak sıvısında, böcek ilaçlarında ve boyalarda bulunan kimyasal\n\n',
    ),
      TextSpan(
        text: ' Kadmiyum',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Pillerde ve sanatçının boyalarında bulunur\n\n',
    ),
      TextSpan(
        text: ' Karbon Monoksit',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Araba egzozunda ve diğer kaynaklardan bulunan zehirli bir gaz\n\n',
    ),
      TextSpan(
        text: ' DDT',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Eskiden böcek ilacı olarak kullanılan bir kimyasal\n\n',
    ),
      TextSpan(
        text: ' Formaldehit',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Ölü bedenleri mumyalamak için kullanılır.\n\n',
    ),
      TextSpan(
        text: 'Hidrazin',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    TextSpan(
    text:
    ': Roket yakıtında kullanılır\n\n',
    ),
      TextSpan(
        text: ' Hidrojen Siyanür',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      TextSpan(
        text:
        ': Gaz odalarında ve kimyasal silahlarda zehir olarak kullanılır\n\n',
      ),
      TextSpan(
        text: ' Kurşun: Zehirli bir metal Naftalin',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      TextSpan(
        text:
        ': Naftalin ve Dezenfektanlarda ve plastiklerde kullanılır\n',
      ),
    ],
    ),
      textAlign: TextAlign.justify,
    ),
    ),
    ),
    ),
    ),
          ],
      ),
      ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  size: 40.0,
                ),
              ),
            ),
          ],
      ),
    );
  }




}
