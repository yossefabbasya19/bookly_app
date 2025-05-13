import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Map<String, dynamic>> get(String url) async {
    Response response = await dio.get(url);
    return response.data;
  }
}
