import 'package:shared_preferences/shared_preferences.dart';

String? token = "";

class HelperClass {
  Future<void> setToken(String label, value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(label, value);
  }

  // Future<void> setBooleanToken(String label, value) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setBool(label, value);
  // }

  Future<void> getAllToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    token = pref.getString("token");
  }

  removeToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("token");
    token = "";
  }
}
