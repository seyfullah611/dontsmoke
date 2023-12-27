import 'package:dontsmokenot/seviye1.dart';
import 'package:flutter/material.dart';


import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'package:dontsmokenot/anasayfa.dart';

class SigaraBasEtmeYntemleri3_3_1 extends StatefulWidget {
  const SigaraBasEtmeYntemleri3_3_1({
    Key? key,
  }) : super(key: key);

  @override
  State<SigaraBasEtmeYntemleri3_3_1> createState() => _SigaraBasEtmeYntemleri3_3_1State();
}

class _SigaraBasEtmeYntemleri3_3_1State extends State<SigaraBasEtmeYntemleri3_3_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Psikolojik Nedenler"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                const ListTile(
                  title: Text(
                      '\n\n\n\n\n- Gerginliği azaltmak, rahatlamak '
                          '\n\n- Stresle başa çıkmak'
                          '\n\n- Keyif almak'
                          '\n\n- Dikkati toplamak'
                          '\n\n- Elini oyalama ihtiyacı'
                          '\n\n- Bağımsızlık ihtiyacı'
                          '\n\n- Özgüven ihtiyacı'
                          '\n\n- Popüler olma isteği'
                          '\n\n- Yalnızlık'
                          '\n\n- Bırakabilecek güçte hissetmeme'
                          '\n\n- Bırakabilecek güçte hissetmeme'
                  ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Anasayfa()) as Route<Object?>);
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Seviye1()) as Route<Object?>);
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
                      // Your logic here
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
