import 'dart:convert';
import 'package:flutter/services.dart';

class ApiService {
  Future<List<dynamic>> fetchMeals() async {
    final String response = await rootBundle.loadString('assets/db.json');
    final data = json.decode(response);
    return data['meals'];
  }
}
