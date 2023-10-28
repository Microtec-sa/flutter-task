import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../models/app_config.dart';

class HTTPService {
  final Dio dio = Dio();
  final GetIt getIt = GetIt.instance;

  String? _base_url;
  String? _api_key;
  String? _access_token;

  HTTPService() {
    AppConfig _config = getIt.get<AppConfig>();
    _base_url = _config.BASE_API_URL;
    _api_key = _config.API_KEY;
  }

Future<Response?> get(String _path, {Map<String, dynamic>? query, String? accessToken}) async {
  try {
    String _url = '$_base_url$_path';
    Map<String, dynamic> _query = {
      'api_key': _api_key,
      'language': 'en-US',
    };
    if (accessToken != null) {
      _query['access_token'] = accessToken;
    }
    if (query != null) {
      _query.addAll(query);
    }
    final response = await dio.get(_url, queryParameters: _query);

      if (response.statusCode == 200) {
        return response;
      } else {
        // Handle HTTP error status codes (e.g., 400, 404, etc.) here
        print('HTTP error: ${response.statusCode}');
        // You can throw a custom exception or return null as needed.
        return null;
      }
    } on DioError catch (e) {
      print('DioError: $e');
      // Handle Dio errors (e.g., network issues) here
      // You can throw a custom exception or return null as needed.
      return null;
    }
  }

  // Add a method to set the access token
  void setAccessToken(String accessToken) {
    _access_token = accessToken;
  }
}
