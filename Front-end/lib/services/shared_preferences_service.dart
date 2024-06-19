// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPreferencesService {
//   static Future<String?> getAuthToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('authToken');
//   }
//
//   static Future<void> saveAuthToken(String token) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('authToken', token);
//   }
// }