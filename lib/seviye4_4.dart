import 'package:flutter/material.dart';

class KendiniOdullendir extends StatefulWidget {
  @override
  _KendiniOdullendirState createState() => _KendiniOdullendirState();
}

class SelectedText {
  late String text;
  late DateTime selectedTime;

  SelectedText(this.text, this.selectedTime);

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'selectedTime': selectedTime.toIso8601String(),
    };
  }

  static SelectedText? fromMap(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    final text = map['text'] as String?;
    final selectedTime = DateTime.parse(map['selectedTime'] as String);
    return SelectedText(text!, selectedTime);
  }
}

class _KendiniOdullendirState extends State<KendiniOdullendir> {
  final List<String> _checkboxTexts = [
    'Sigaraya para harcamayarak bütçeme katkıda bulundum',
    'Sigaraya harcamadığım para ile kitap aldım',
    'Sigaraya harcamadığım para ile bağışta bulundum',
    'Sigara içmeyerek giysilerimin temiz kokmasını sağladım.',
    'Sigara içmeyerek nefesimin temiz kokmasını sağladım.',
    'Sigara içmeyerek kalp, akciğer vb. organlarımın sağlığını korudum.',
    'Sigara içmeyerek uyku kalitemi arttırdım.',
    'Sigara içmeyerek daha rahat nefes aldım.',
    'Sigara içmeyerek kendimi daha dinç hissettim.',
    'ÖSigara içmeyerek kırışıklıklarımın artmasını engelledim.',
    'Sigara içmeyerek etrafımdaki insanların sağlığını korumuş oldum.',
    'Sigara içmeyerek bulunduğum ortamın havasını kirletmemiş oldum.',
  ];
  List<String> _selectedTexts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9966),
        title: Text(
          'Ödüllendirme Sayfası',
          style: TextStyle(
            color: Color(0xFFB792900),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveSelectedTexts,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _checkboxTexts.length,
        itemBuilder: (context, index) {
          final text = _checkboxTexts[index];
          final bool isSelected = _selectedTexts.contains(text);

          return CheckboxListTile(
            title: Text(text),
            value: isSelected,
            onChanged: (bool? newValue) {
              if (newValue != null) {
                setState(() {
                  if (newValue) {
                    final selectedText = SelectedText(text, DateTime.now());
                    // Add your logic to save selectedText when checked
                  } else {
                    // Add your logic to handle unchecking
                  }
                });
              }
            },
          );
        },
      ),
    );
  }

  void _saveSelectedTexts() {
    // Add your logic to save _selectedTexts
  }
}
