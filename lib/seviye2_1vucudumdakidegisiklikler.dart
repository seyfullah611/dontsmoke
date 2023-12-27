
import 'package:dontsmokenot/seviye2_1_1hesaplama.dart';
import 'package:flutter/material.dart';


class Vucudumdakidegisikler2_1 extends StatefulWidget {
  Vucudumdakidegisikler2_1({
    Key? key,
  }) : super(key: key);

  @override
  State<Vucudumdakidegisikler2_1> createState() =>
      _Vucudumdakidegisikler2_1State();
}

class _Vucudumdakidegisikler2_1State extends State<Vucudumdakidegisikler2_1> {
  ScrollController _scrollController = ScrollController();
  bool _showScrollIcon = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _showScrollIcon = false;
      });
    } else {
      setState(() {
        _showScrollIcon = true;
      });
    }
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
  final List<String> texts = [
    'Sigara Bıraktıktan Sonra Sosyal Hayatta Ortaya Çıkan Olumlu Değişiklikler',
    'Sigara arası vermek zorunda kalmayacaksınız',
    'Çevrenizi sigara içenlerle sınırlandırmak durumunda kalmayacaksınız',
    'Çocuklar dahil her türlü insanla etkileşime girip çevrenizi zenginleştirebileceksiniz',
    'Diğer insanlar için model olabileceksiniz',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text(
          'Sigarayı Bıraktıktan Sonra Meydana Gelen Olumlu Değişiklikler',
          style: TextStyle(color: Color(0xFF5E816B)),
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
                  child: Image.asset(
                    'images/seviye1images/icerik2/17.png',
                  ),
                ),


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


                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'images/seviye1images/icerik2/20.png',
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'images/seviye1images/icerik2/21.png',
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => HesaplamaSayfasiWeb2_1_1()) as Route<Object?>);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      minimumSize: Size(double.infinity, 60.0),
                      primary: Color(0xFFD3EFDE),
                    ),
                    child: Text('Hesaplama Sayfası \n\n Ekrana Tıklayınız'),
                  ),
                ),
                SizedBox(height: 100),
                // Added for the space before the scroll icon
              ],
            ),
          ),
          Visibility(
            visible: _showScrollIcon,
            child: GestureDetector(
              onTap: _scrollToBottom,
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 20.0),
                child: Icon(
                  Icons.arrow_downward,
                  size: 30.0,
                  color: Colors.grey,
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
class _Vucudumdakidegisikler2_1State extends State<Vucudumdakidegisikler2_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD3EFDE),
        title: Text('Sigarayı Bıraktıktan Sonra Meydana Gelen Olumlu Değişiklikler',
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
                  child: Image.asset('images/seviye1images/icerik2/17.png',),

                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,),

                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context)
                        .size
                        .height, // ekranın yüksekliği
                    //color: Colors.red,
                    child: Center(
                      child: Text(
                        '\nSigara Bıraktıktan Sonra Sosyal Hayatta Ortaya Çıkan Olumlu Değişiklikler\n\n\n\n\n'
                        '  \n  - Sigara arası vermek zorunda kalmayacaksınız\n'
                        '   \n - Çevrenizi sigara içenlerle sınırlandırmak durumunda kalmayacaksınız.\n'
                        '    \n- Çocuklar dahil her türlü insanla etkileşime girip çevrenizi zenginleştirebileceksiniz\n'
                        '\n- Diğer insanlar için model olabileceksiniz.',
                        // görüntülenecek metin
                        style: TextStyle(
                            fontSize: 18.0, // metin boyutu
                            fontWeight: FontWeight.bold, // metin kalınlığı
                            color: Colors.grey, // metin rengi
                            fontFamily: 'Helvetica'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),

                Padding(
                padding: EdgeInsets.symmetric(
    horizontal: MediaQuery.of(context).size.width * 0.05,),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.red,
                  child: Image.asset('images/seviye1images/icerik2/20.png',),

                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.red,
                  child: Image.asset('images/seviye1images/icerik2/21.png',),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (_) => HesaplamaSayfasiWeb2_1_1()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        minimumSize: Size(double.infinity, 60.0),
                    primary: Color(0xFFD3EFDE),
                    ),

                    child: Text('Hesaplama Sayfası \n\n Ekrana Tıklayınız'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
