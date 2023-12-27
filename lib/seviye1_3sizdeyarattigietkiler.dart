import 'package:dontsmokenot/seviye1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizdeEtkileri1_3 extends StatelessWidget {
  final Controller ctrl = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    final RxList<int> selected = RxList<int>([]);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Obx(
              () => ListView(
            children: [
              // CheckboxListTile'lar burada...

              ElevatedButton(
                onPressed: () async {
                  // Seçilen checkbox text'lerini alın
                  var selectedCheckboxes = [
                    selected.contains(1) ? 'Nefes alıp verirken zorlanıyorum' : null,
                    selected.contains(2) ? 'Ağız ve diş sağlığımı etkiliyor ' : null,
                    // Diğer checkbox'lar burada...
                  ];

                  print('Seçilen checkbox değerleri: $selectedCheckboxes');

                  // Seviye artırma işlemi
                  // Örnek olarak bir LevelAuth sınıfı ve onun updateLevel metodu kullanılır.

                  Navigator.push(context, MaterialPageRoute(builder: (context) => Seviye1()) as Route<Object?>);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFC9ECD8),
                ),
                child: Text('Kayıt Tamamla'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var checkBool = false.obs;
}
