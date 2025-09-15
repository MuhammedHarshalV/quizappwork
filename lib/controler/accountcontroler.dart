import 'package:shared_preferences/shared_preferences.dart';

class AppUtils {
  static Future<void> storename(String name) async {
    final SharedPreferencesAsync storenmaeshared = SharedPreferencesAsync();
    await storenmaeshared.setString('action', name);
  }

  static Future<String> gettoken() async {
    final SharedPreferencesAsync storenmaeshared = SharedPreferencesAsync();
    final String? action = await storenmaeshared.getString('action');
    return action ?? '';
  }
}
