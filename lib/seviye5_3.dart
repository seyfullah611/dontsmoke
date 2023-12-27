import 'package:flutter/material.dart';

class AddStoryPage extends StatefulWidget {
  const AddStoryPage({Key? key}) : super(key: key);

  @override
  _AddStoryPageState createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
  final _formKey = GlobalKey<FormState>();
  final _storyController = TextEditingController();

  Future<void> _addStory() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    final hikaye = _storyController.text.trim();
    if (hikaye.isEmpty) return;

    // Your logic to save the story (you can replace the Firebase logic)

    _storyController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBD7C),
        title: const Text(
          'Benim Öyküm',
          style: TextStyle(color: Color(0xFFA75400)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _storyController,
                  decoration: const InputDecoration(labelText: 'Hikayeni buraya yaz'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen hikayeni girin';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _addStory,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFBD7C),
                  ),
                  child: const Text(
                    'Hikaye Ekle',
                    style: TextStyle(color: Color(0xFFA75400)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StoryListPage extends StatefulWidget {
  const StoryListPage({Key? key}) : super(key: key);

  @override
  _StoryListPageState createState() => _StoryListPageState();
}

class _StoryListPageState extends State<StoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFBD7C),
        title: const Text('Hikayeler'),
      ),
      body: const Center(
        child: Text('Hikaye yok'),
      ),
    );
  }
}
