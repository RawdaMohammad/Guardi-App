import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'routes.dart';

class VolunteerService {


  static Future<http.Response> addVolunteer(
      File? idFrontPhoto,
      File? idBackPhoto,
      File? selfPhoto
      ) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      print(token);
      // var url = Uri.parse(baseURL + 'volunteers');

      var request = http.MultipartRequest('POST', Uri.parse(baseURL + 'volunteers'));

      request.headers['Authorization'] = 'Bearer $token';
      request.headers['Accept'] = 'application/json';


      if (idFrontPhoto != null) {
        final imageFile = idFrontPhoto;
        String fileName = imageFile.path.split('/').last;

        request.files.add(await http.MultipartFile.fromPath(
          'id_front',
          imageFile.path,
          contentType: MediaType('image', 'jpeg'),
          filename: fileName,
        ));
      }

      if (idBackPhoto != null) {
        final imageFile = idBackPhoto;
        String fileName = imageFile.path.split('/').last;

        request.files.add(await http.MultipartFile.fromPath(
          'id_back',
          imageFile.path,
          contentType: MediaType('image', 'jpeg'),
          filename: fileName,
        ));
      }

      if (selfPhoto != null) {
        final imageFile = selfPhoto;
        String fileName = imageFile.path.split('/').last;

        request.files.add(await http.MultipartFile.fromPath(
          'id_front',
          imageFile.path,
          contentType: MediaType('image', 'jpeg'),
          filename: fileName,
        ));
        print(request);
        print(imageFile);
      }
      var streamedResponse = await request.send();
      print(streamedResponse);
      var response = await http.Response.fromStream(streamedResponse);
      print(response.body);
      return response;
  }
}
