import 'package:exam_flutter/src/models/cotizacion.dart';
import 'package:http/http.dart' show Client;

class ApiService {
  final String baseUrl = "http://localhost:3000";
  Client client = Client();

  Future<List<Profile>?> getProfiles() async {
    final response = await client.get(Uri.parse("$baseUrl/api/profile"));
    if (response.statusCode == 200) {
      return profileFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<bool> createProfile(Profile data) async {
    final response = await client.post(
      Uri.parse("$baseUrl/cotizaciones"),
      headers: {"content-type": "application/json"},
      body: profileToJson(data),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateProfile(Profile data) async {
    final response = await client.put(
      Uri.parse("$baseUrl/api/profile/${data.id}"),
      headers: {"content-type": "application/json"},
      body: profileToJson(data),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> deleteProfile(int id) async {
    final response = await client.delete(
      Uri.parse("$baseUrl/api/profile/$id"),
      headers: {"content-type": "application/json"},
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
