import 'package:shared_preferences/shared_preferences.dart';

class LevelAuth {
  int _level = 1;

  int get level => _level;

  Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _level = prefs.getInt('level') ?? 1;
  }

  Future<void> updateLevel(int gelenSayi) async {
    if (gelenSayi > _level) {
      _level = gelenSayi;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('level', _level);
    }
  }
}