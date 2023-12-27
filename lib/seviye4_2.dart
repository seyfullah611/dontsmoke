import 'package:dontsmokenot/seviye4.dart';
import 'package:flutter/material.dart';
import 'package:dontsmokenot/ekranlar/sidebar_menu.dart';
import 'package:get/get.dart';

class sigaratetikleme4_2 extends StatefulWidget {
  sigaratetikleme4_2({
    Key? key,
  }) : super(key: key);

  @override
  State<sigaratetikleme4_2> createState() => _sigaratetikleme4_2State();
}

class _sigaratetikleme4_2State extends State<sigaratetikleme4_2> {
  final RxList<int> selected = RxList<int>([]);
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9966),
        title: Text(
          "Tetikleyicilerden Uzaklaş",
          style: TextStyle(color: Color(0xFFB792900)),
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Obx(
              () => ListView(
            children: [
              const ListTile(
                title: Text(
                  '\nSigaradan uzak durabilmek için yapabileceğin bazı aktiviteler aşağıda listelenmiştir. Deneyebileceklerini işaretle ve seçtiklerini uygulamaya çalış.\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                title: const Text(
                  "Sigara içilen ortamlardan uzak dur.",
                  style: TextStyle(color: Colors.black),
                ),
                value: selected.contains(1),
                onChanged: (value) {
                  if (value == true) {
                    selected.add(1);
                  } else {
                    selected.remove(1);
                  }
                },
                activeColor: Color(0xFFFF9966),
              ),
              // ... Other CheckboxListTile widgets

              ElevatedButton(
                onPressed: () async {
                  // Send the selected checkbox texts to your desired location
                  // (Note: Firebase-related code is removed, you can add it if needed)

                  // Navigate to Seviye4 after completion
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Seviye4()) as Route<Object?>);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF9966),
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
}

class Controller extends GetxController {
  var checkBool = false.obs;
}
