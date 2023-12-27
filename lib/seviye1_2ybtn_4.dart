import 'package:flutter/material.dart';

class Cevrezarari extends StatelessWidget {
  Cevrezarari({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text("Çevre Üzerindeki Zararları",
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),        body: Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
            /*  Container(
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,
                child: Image.asset('images/seviye1images/icerik2/15.png',),

              ),*/
              Container(
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,
                child: Image.asset('images/seviye1images/icerik2/16.png',),

              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
               /* child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context)
                      .size
                      .height, // ekranın yüksekliği
                  //color: Colors.red,
                  child: Center(
                    child: Text(
                      '\n- Tütün yetiştirmek için her yıl dünyada yaklaşık 3 milyon 500 bin hektar ormanlık alan yok ediliyor.\n'
'  \n  - Dünya çapında her yıl 4,5 trilyon sigara izmariti düzensiz bir şekilde doğaya atılıyor.\n'
'   \n - Doğaya karışan izmaritler zehirli atık üretiyor ve binlerce kimyasalın havaya, suya ve toprağa karışmasına neden oluyor\n',
                      // görüntülenecek metin
                      style: TextStyle(
                          fontSize: 15.0, // metin boyutu
                          fontWeight: FontWeight.bold, // metin kalınlığı
                          color: Colors.grey, // metin rengi
                          fontFamily: 'Helvetica'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),*/
              )
            ],
          ),
        ),
      ],
    ),
    );
  }
}
    /*
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                const ListTile(
                  title: Text('\n Doğaya ve Çevreye Zararları\n '
    '  \n  Hava kirliliği'
     ' \n  Çevre kirliliği: İzmarit atıklarının doğada uzun süre kaybolmaması'
     ' \n  Sigarada bulunan toksik kimyasalların çevredeki nesnelere yapışması sonucu insan sağlığına olumsuz etkileri'
     ' \n  Pasif içicilik'
      '\n  Sigara yapımı ve paketlenmesi için ağaç kullanımı'
      '\n  Orman yangınları'),
                  //subtitle: Text('Harita açıklaması'),
                ),




              ],
            ),
          ),

          Container(
            height: 49.0,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.0,
                color: const Color(0xff707070),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 132.0,
                  height: 60.0,
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Anasayfa()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27.0),

                        ),

                      ),
                    ),
                    child: Icon(Icons.home),

                  ),

                ),
                //orta buton
                Container(
                  width: 128.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seviye1()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                    child: Icon(Icons.timeline),
                  ),
                ),
                Container(
                  width: 132.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                     // Navigator.of(context).push(MaterialPageRoute(builder: (_) => SigaraKullanim1_1()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(27.0),
                        ),
                      ),
                    ),
                    child: Icon(Icons.book),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Builder(
        builder: (context) => SidebarMenu(),
      ),
    );
  }
}
*/