import 'package:dio/dio.dart';
import 'package:movie_app/data/base/database_repository.dart';

final Dio _dio = Dio();

class _ApiClient implements DatabaseRepository {
  final String _token =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNmM2ZWM5N2ViNjcxMzc0OWYyMmU1ZjVkMGM0MGI4NCIsInN1YiI6IjY1MzJjODBhOWFjNTM1MDg3YjQ1NTU5MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ._Sv10dKzq2d4CCgCW6o36NWMiKM_5TxMl2g-5ksC5L4';
  final _baseUrl = 'https://api.themoviedb.org/3/';

  @override
  Future<Response> get({required String path, Map<String, dynamic>? queryParameters, int? page}) async {
    final cancelToken = CancelToken();

    _dio.options.headers["Authorization"] = "Bearer $_token";

    return await _dio.get(
      page == null
          ? _buildUrl('$_baseUrl$path', queryParameters: queryParameters)
          : _buildUrl('$_baseUrl$path&page=$page', queryParameters: queryParameters),
      cancelToken: cancelToken,
    );
  }

  String _buildUrl(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    if (queryParameters != null) {
      path += '?$queryParameters';
    }
    return path;
  }
}

final apiClient = _ApiClient();
