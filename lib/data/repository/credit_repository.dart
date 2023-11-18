import 'package:movies_app/data/web_services/web_serviece.dart';

import '../models/cast.dart';

///Responsible for getting Movies from json responce
class CreditsRepository {
  static final CreditsRepository _creditsRepository =
      CreditsRepository.internal();

  factory CreditsRepository() => _creditsRepository;

  CreditsRepository.internal() : allCredits = [];

  List<Cast> allCredits;

  /// Returns all credits data decoded from Responce
  Future<List<Cast>> getCredits(int movieId) async {
    final moviesWebServices = WebService();
    final response = await moviesWebServices
        .getRequest('/movie/$movieId/credits', queryParameters: {
      'language': 'en-US',
    });

    final cast = (response.data['cast'] as List);
    final allCredits = cast.map((m) => Cast.fromJson(m)).toList();

    return allCredits;
  }
}
