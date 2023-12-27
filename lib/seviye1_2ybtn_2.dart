import 'package:flutter/material.dart';

class Ekonomikzarar1_22 extends StatelessWidget {
  Ekonomikzarar1_22({
    Key? key,
  }) : super(key: key);

  final List<String> texts = [
    'Dünyada sigaranın doğrudan ve dolaylı maliyeti 1.8 trilyon dolardır.',
    'Doğrudan kişisel harcamaya dayalı maliyet yıllık ortalama üç asgari ücrete denk gelmektedir.',
    'Ülkemizde sigara içen 17 milyon kişi günde 40 milyon doları, yılda ise 15 milyar doları sigaraya harcamaktadır.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0F0C0),
        title: Text(
          "Ekonomik Zararları",
          style: TextStyle(
            color: Color(0xFF5E816B),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var text in texts)
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(vertical: 8),
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
                          text,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontFamily: 'Calibre',
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }}


