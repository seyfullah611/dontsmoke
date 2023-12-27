import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'seviye3.dart';
import 'ekranlar/sidebar_menu.dart';

class StresYonetimi extends StatelessWidget {
  const StresYonetimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxList<int> selected = RxList<int>([]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFADD8E6),
        title: const Text("Stres Yönetimi"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Obx(() => ListView(
          children: [
            const ListTile(
              title: Text(
                '\nStresle başa çıkmak için aşağıdaki listeden deneyebileceklerini işaretle. Stresli hissettiğinde işaretlediğin maddelerden o an için sana uygun olanı/olanları dene.\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            CheckboxListTile(
              title: const Text(
                "Sağlığınızı zarar veren davranışlarınızı düşünün ve bunları nasıl kontrol altına alacağınızı planlayın",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.justify,
              ),
              value: selected.contains(1),
              onChanged: (value) {
                if (value == true) {
                  selected.add(1);
                } else {
                  selected.remove(1);
                }
              },
              activeColor: const Color(0xFFADD8E6),
            ),
            // ... (Other CheckboxListTile widgets)

            ElevatedButton(
              onPressed: () {
                // Your logic here
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Seviye3()) as Route<Object?>);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFADD8E6),
              ),
              child: const Text('Kayıt Tamamla'),
            ),
          ],
        )),
      ),
      drawer: Builder(
        builder: (context) => SidebarMenu(),
      ),
    );
  }
}

class Controller extends GetxController {
  var checkBool = false.obs;
}
