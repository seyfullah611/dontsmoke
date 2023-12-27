import 'package:flutter/material.dart';

class ChatForum extends StatefulWidget {
  @override
  _ChatForumState createState() => _ChatForumState();
}

class _ChatForumState extends State<ChatForum> {
  final _formKey = GlobalKey<FormState>();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBD7C),
        title: Text(
          'Mesaj Forum',
          style: TextStyle(color: Color(0xFFA75400)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              // Your logout logic here
              Navigator.of(context).pushReplacementNamed('/login');
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 0, // Replace with the actual number of messages
              itemBuilder: (context, index) {
                // Replace with the logic to display messages
                return ListTile(
                  title: Text('Message Text'),
                  subtitle: Text('Sender'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: _messageController,
                      decoration: InputDecoration(labelText: 'Message'),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter a message';
                        }
                        return null;
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Your logic to send a message (replace Firebase logic)
                        _messageController.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
