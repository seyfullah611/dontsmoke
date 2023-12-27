import 'package:flutter/material.dart';

class BirakmaTarihiPlanlamaPage extends StatefulWidget {
  @override
  _BirakmaTarihiPlanlamaPageState createState() =>
      _BirakmaTarihiPlanlamaPageState();
}

class _BirakmaTarihiPlanlamaPageState
    extends State<BirakmaTarihiPlanlamaPage> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  void _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });

      // Your logic here (removed Firebase-related code)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFADD8E6),
        title: Text('Bırakma Tarihi Planlama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Lütfen bırakma tarihini seçin:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Tarih Seç'),
              onPressed: _selectDate,
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFADD8E6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
