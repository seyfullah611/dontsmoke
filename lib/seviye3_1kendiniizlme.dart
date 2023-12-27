import 'package:flutter/material.dart';


class Question {
  final String id;
  final String questionText;
  final List<String> choices;

  Question({required this.id, required this.questionText, required this.choices});
}

class QuizPage extends StatefulWidget {
  final String userId;

  QuizPage({required this.userId});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Question> _questions = [
    Question(
      id: "1",
      questionText: "Ne zaman ve hangi durumlarda sigara içtin?",
      choices: [
        "Uykudan önce veya sonra",
        // ... other choices
      ],
    ),
    Question(
      id: "2",
      questionText: "Bugün sigara içme isteğinle ne kadar başa çıktın?",
      choices: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
    ),
    Question(
      id: "3",
      questionText: "Sigara içtiğinde genelde yaşadığın duygu nedir?",
      choices: ["Kaygı", "Öfke", "Mutluluk", "Rahatlama", "Üzüntü", "Hiçbiri"],
    ),
  ];

  List<String> _selectedAnswers = ["", "", ""];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFADD8E6),
        title: Text("Kendini izleme"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... existing code
              ElevatedButton(
                onPressed: () async {
                  // Update this block with your desired logic
                  // You can use local storage, another API, or any other data source
                  // to save the quiz answers.

                  // For example, saving to local storage (shared preferences):
                  // saveToLocalStorage(_selectedAnswers);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Answers saved!')),
                  );

                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFADD8E6),
                ),
                child: Text("Kaydet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultsPage {}
