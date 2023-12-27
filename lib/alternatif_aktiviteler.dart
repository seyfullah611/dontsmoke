import 'package:flutter/material.dart';
import './seviye3.dart';
import 'package:get/get.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';

class AlternatifAktiviteler extends StatelessWidget {
  AlternatifAktiviteler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxList<int> selected = RxList<int>([]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFADD8E6),
        title: Text("Sigaraya Karşı Alternatif Aktiviteler"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Obx(
              () => ListView(
            children: [
              const ListTile(
                title: Text(
                  '\nSigara içme isteğin geldiğinde aşağıdaki listeden deneyebileceklerini işaretle. Sigara içme isteğine karşı işaretlediğin maddelerden o an için sana uygun olanı/olanları dene.\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              buildCheckboxListTile("Egzersiz yapabilirsiniz", 1, selected),
              buildCheckboxListTile("Film izleyebilirsiniz", 2, selected),
              buildCheckboxListTile("Yürüyüş yapabilirsiniz", 3, selected),
              buildCheckboxListTile("Kitap okuyabilirsiniz", 4, selected),
              buildCheckboxListTile("Müzik dinleyebilirsiniz", 5, selected),
              buildCheckboxListTile(
                "Ortam değiştirebilirsiniz (örneğin bulunduğunuz odayı değiştirmek, dışarıya çıkmak vb.",
                6,
                selected,
              ),
              buildCheckboxListTile(
                "Ellerinizi meşgul edebilecek bir şeylerle uğraşabilirsiniz (örneğin, yapboz oynamak, tesbih çekmek, örgü örmek, ellerinizi kullanacağınız bir işle meşgul olmak vb.)",
                7,
                selected,
              ),
              buildCheckboxListTile("Hobilerinize vakit ayırabilirsiniz", 8, selected),
              buildCheckboxListTile(
                "Ağzınızı meşgul edecek bir şeyler çiğneyebilirsiniz (çerez, atıştırmalık, şeker, sakız vb.)",
                9,
                selected,
              ),
              ElevatedButton(
                onPressed: () {
                  // Seçilen checkbox değerlerini Firebase'e gönderme işlemini burada yapabilirsiniz
                  // ...

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seviye3()) as Route<Object?>,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFADD8E6),
                ),
                child: Text('Kayıt Tamamla'),
              ),
            ],
          ),
        ),
      ),
      drawer: Builder(
        builder: (context) => SidebarMenu(),
      ),
    );
  }

  CheckboxListTile buildCheckboxListTile(
      String title,
      int value,
      RxList<int> selected,
      ) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      value: selected.contains(value),
      onChanged: (isChecked) {
        if (isChecked == true) {
          selected.add(value);
        } else {
          selected.remove(value);
        }
      },
      activeColor: Color(0xFFADD8E6),
    );
  }
}
