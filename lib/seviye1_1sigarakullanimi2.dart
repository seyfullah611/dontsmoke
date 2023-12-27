import 'package:flutter/material.dart';


class Seviye1_1_2 extends StatefulWidget {

  @override
  State<Seviye1_1_2> createState() => _Seviye1_1_2State();
}
class _Seviye1_1_2State extends State<Seviye1_1_2> {
  ScrollController _scrollController = ScrollController();
  bool _isScrolledToBottom = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset == _scrollController.position.maxScrollExtent) {
      setState(() {
        _isScrolledToBottom = true;
      });
    } else {
      setState(() {
        _isScrolledToBottom = false;
      });
    }
  }
  final List<String> texts = [
    'Türkiye’de sigara içen 15 yaş ve üzeri bireylerin oranı 2016 yılında %26,5 iken 2019 yılında %28’e yükseldi.',
    'Sigara içmenin en yüksek oranı %42,8 ile 35-44 yaş grubunda gözlenmektedir.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text('Yaşa Ve Cinsiyete Bağlı Ölüm',
          style: TextStyle(
              color: Color(0xFF5E816B)
          ),),
      ),
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('images/seviye1images/icerik2/2.png'),
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
                              color: Color(0xFFD0F0C0),
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
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              opacity: _isScrolledToBottom ? 0.0 : 1.0,
              duration: Duration(milliseconds: 300),
              child: IconButton(
                icon: Icon(Icons.arrow_downward),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
