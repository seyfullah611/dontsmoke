import 'package:flutter/material.dart';

class SosyalDestekPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9966),
        title: Text(
          'Sosyal Destek',
          style: TextStyle(
            color: Color(0xFFB792900),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
            'Sigara içmeye karşı sosyal destek sistemlerini harekete geçirebilirsin. Bunun için deneyebileceğin bazı öneriler aşağıda listelenmiştir.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB792900),

            ),
              textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFF9966),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Text(
              ' Sigara içme isteğin ortaya çıktığında ailenden veya yakın arkadaşlarından destek al.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFB792900),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFF9966),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Text(
              ' Sigara içmeyi tetikleyecek ortamlardan uzak dur.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFB792900),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFF9966),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Text(
              ' Sigara içmeyi teşvik edecek baskı ortamlarına girme.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFB792900),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFF9966),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Text(
              ' Sigara bırakmanın zorluklarını paylaşacağın arkadaşların olsun.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFB792900),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFF9966),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(12),
            child: Text(
              ' Sevdiğin insanlara ve sana değer verenlere sigara içmemeyi taahhüt et, onlara söz ver.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFB792900),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
          decoration: BoxDecoration(
          color: Color(0xFFFF9966),
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.all(12),
    child: Text(
    ' Yakınlarının sigarayı bırakabileceğine ilişkin verdiği bilgi ve tavsiyelerin bilincinde ol.',
    style: TextStyle(                fontSize: 16,
      color: Color(0xFFB792900),
    ),
    ),
          ),
              SizedBox(height: 8),
            ],
          ),
      ),
    );
  }



}