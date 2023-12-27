import 'package:flutter/material.dart';

class MotivasyonDestek extends StatelessWidget {
  const MotivasyonDestek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9966),
        title: const Text('Motivasyon Destek',
          style: TextStyle(
              color: Color(0xFFB792900)
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sigarayı bırakmak için azimli bir irade geliştirmenin en önemli yönü, gücünü istikrarlı şekilde sergilemendir:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- İstikrarlı çabalarının önündeki asıl engel sigarayı bırakma konusunda kolay pes etmen, sigarayı umursamaman ve yeterince çaba göstermemendir.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Sigara içmeyi teşvik eden bir duygu zihninde belirdiğinde onu söküp atmakta zorlanıyorsan o duyguyu ortaya çıkaran düşünceyi kıyasıya eleştir.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Sayısız kez ve istikrarla tekrar edilen sigara bırakma eylemlerinin büyük sonucu doğuracağından endişe etme.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Sigarayı bırakma girişimlerinin başında zorlanırsın ancak istikrarlı şekilde devam edersen rahatlayarak bırakırsın.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Sigarayı hemen bırakamazsan acele edip vazgeçme. Önemli olan küçük adımları sıklıkla tekrarlamaktır. Sürekli tekrarlanan eylemler alışkanlığa dönüşecektir.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Sigarayı bırakma konusundaki küçük gayretler çok önemli. Hiçbir çaba yok olup gitmez. Bırakma alışkanlığının gelişmesinde her çabanın etkisi var.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- İstikrarlı şekilde devam edersen zaman bırakmaya dönük alışkanlık yasasını lehine işletir.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
