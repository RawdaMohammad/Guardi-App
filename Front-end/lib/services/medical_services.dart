import 'dart:convert';
import 'package:guardi_app/services/routes.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MedicalInformationService{
  static Future<http.Response> storeMedicalInfo(
      String allergies,
      String chronicDisease,
      String bloodType,
      String medications,
      ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print(token);
    if (token == null) {
      throw Exception('No token found');
    }
    Map data = {
      'allergies': allergies,
      'chronic_disease': chronicDisease,
      'blood_type': bloodType,
      'medications': medications,
    };
    var body = json.encode(data);
    print(body+'////////////////////////');
    var url = Uri.parse(baseURL + 'medical-information');
    http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
    },
      body: body,
    );
    print('Token : ${token}');
    return response;

  }
}