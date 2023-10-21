import 'package:dio/dio.dart';

abstract class DatabaseRepository {
  Future<Response> get({required String path, Map<String, dynamic>? queryParameters});
}
