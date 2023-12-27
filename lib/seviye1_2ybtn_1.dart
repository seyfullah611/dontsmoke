import 'package:flutter/material.dart';

class Sigarazarari1_21 extends StatefulWidget {
  Sigarazarari1_21({
    Key? key,
  }) : super(key: key);

  @override
  State<Sigarazarari1_21> createState() => _Sigarazarari1_21State();
}
class _Sigarazarari1_21State extends State<Sigarazarari1_21> {
  final List<String> texts = [
    'Sigara içenlerin kalp hastalığı, felç ve akciğer kanseri geliştirme olasılığı içmeyenlere oranla daha yüksektir.',
    'Sigara içenlerde koroner kalp hastalığı riski içmeyenlere oranla 2 ila 4 kat fazladır',
    'Sigara içenlerde inme riski içmeyenlere oranla 2 ila 4 kez yüksektir',
    'Sigara içen erkeklerde akciğer kanseri gelişme riski 25 kat fazladır',
    'Sigara içen kadınlarda akciğer kanseri gelişme riski 25,7 kat fazladır',
    'Sigara içenlerin KOAH\'tan ölme olasılığı içmeyenlere göre 12 ila 13 kat daha yüksektir',
    'Sigara içme, tüm akciğer kanseri ölümlerinin yaklaşık% 90\'ına neden olur',
  ];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD0F0C0),
          title: Text("Fiziksel Sağlıkla İlgili Zararları",
            style: TextStyle(
                color: Color(0xFF5E816B)
            ),),
        ),
        body: Stack(
          children: [
          ListView.builder(
          controller: _scrollController,
          itemCount: texts.length + 1, // +1 for the image
          itemBuilder: (context, index) {
            if (index == 0) {
              return Image.asset('images/seviye1images/icerik2/10.png');
            } else {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFFD0F0C0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black54,
                          ),
                          margin: EdgeInsets.only(top: 6, right: 8),
                        ),
                        Expanded(
                          child: Text(
                            texts[index - 1],
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontFamily: 'Helvetica',
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          },
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




