import 'package:shared_preferences/shared_preferences.dart';

class AppUtils {
  static Future<void> storename(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', name);
  }

  static Future<String> getname() async {
    final prefs = await SharedPreferences.getInstance();
    final String? action = await prefs.getString('username');
    return action ?? 'Player';
  }
}
