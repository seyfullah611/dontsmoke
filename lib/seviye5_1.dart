import 'package:flutter/material.dart';

class SigaraAliskanligaDonusumu extends StatefulWidget {
  @override
  _SigaraAliskanligaDonusumuState createState() => _SigaraAliskanligaDonusumuState();
}

class _SigaraAliskanligaDonusumuState extends State<SigaraAliskanligaDonusumu> {
  List<String> _selectedCheckboxes = [];

  final List<String> _checkboxOptions = [
    'Sigarasız hayata alışmaya başladım',
    'Sigara içmemenin yararlarını gün be gün hissediyorum',
    'Sigara içmeyen insanların yaşam tarzına uyum sağladım',
    'Sigara içmeyi tetikleyici çok ciddi durumların yeniden başlamama yol açabileceği ile ilgili korku ve endişelerimin farkındayım',
    'Sigaraya yeniden başlamama neden olabilecek cezbedici durumlarla sıklıkla karşılaşabileceğimi biliyorum ',
    'Altı ay boyunca sigara içmemenin tamamen bırakma konusunda tam bir garanti sağlamadığının ve mücadeleye bir kaç yıl boyunca devam etmem gerektiğimin bilincindeyim',
    'Sigara içtiğim ortam ve durumlardan oldukça uzak yeni bir yaşam biçimim var'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBD7C),
        title: Text(
          'Alışkanlık haline dönüşme',
          style: TextStyle(color: Color(0xFFA75400)),
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            title: Text(
              '\nSigarasız yeni yaşam tarzında oldukça iyi bir yol katettin. Sigarasız yeni yaşamının sana sağladığı avantajları düşün ve aşağıdaki listeden işaretle. Bu avantajları kendine hatırlatmaya devam et.\n\n', //subtitle: Text('Harita açıklaması'),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          for (var i = 0; i < _checkboxOptions.length; i++)
            CheckboxListTile(
              title: Text(_checkboxOptions[i]),
              value: _selectedCheckboxes.contains('Checkbox $i'),
              onChanged: (bool? value) {
                setState(() {
                  if (value != null && value) {
                    _selectedCheckboxes.add('Checkbox $i');
                  } else {
                    _selectedCheckboxes.remove('Checkbox $i');
                  }
                });
              },
              activeColor: Color(0xFFFFBD7C),
            ),
          ElevatedButton(
            onPressed: () {
              if (_selectedCheckboxes.isNotEmpty) {
                // Save your data or perform any action
                // For example, you can print the selected items:
                print(_selectedCheckboxes);
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFBD7C),
            ),
            child: Text(
              'Kaydet',
              style: TextStyle(color: Color(0xFFA75400)),
            ),
          ),
        ],
      ),
    );
  }
}
