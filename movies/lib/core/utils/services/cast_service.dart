import 'package:dio/dio.dart';
import 'package:movies/Features/Movie/data/models/cast_model.dart';

import '../constants.dart';

class CastService {
  final Dio dio = Dio();

  Future<List<CastModel?>?> getCast({required int movieId}) async {
    try {
      final response = await dio.get(
        '${Constants.castUrl}$movieId/credits',
        options: Options(
          headers: {
            'accept': 'application/json',
            'Authorization': "Bearer ${Constants.apiReadAccessToken}",
          },
        ),
      );
      if (response.data['cast'] != null) {
        List<CastModel> casts = [];
        response.data['cast'].forEach((value) {
          casts.add(CastModel.fromjson(value));
        });
        return casts;
      }
      return [];
    } catch (e) {
      if (e is DioException) {
        throw Exception('Internet Connection Failed');
      } else {
        throw Exception('Error: $e');
      }
    }
  }
}
