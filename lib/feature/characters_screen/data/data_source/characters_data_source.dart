import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/feature/characters_screen/data/models/character_models.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';

abstract interface class CharactersDataSource {
  Future<CharactersEntity> getCharacters({
    required int page,
    required String query,
    required String gender,
    required String status,
  });
  Future<CharactersEntity> nextPageCharacters({required String request});
}

@LazySingleton(as: CharactersDataSource)
class CharactersDataSourceImpl implements CharactersDataSource {
  final dio = Dio();

  @override
  Future<CharactersEntity> getCharacters({
    required int page,
    required String query,
    required String gender,
    required String status,
  }) async {
    final Map<String, dynamic> queryParameters = {
      'page': page,
      'name': query,
      'gender': gender,
      'status': status
    };

    final response = await dio.get(
      '${AppConstants.baseUrl}character/',
      queryParameters: queryParameters,
    );
    try {
      return CharactersModels.fromJson(response.data);
    } on Object catch (error, stackTrace) {
      Error.throwWithStackTrace(error, stackTrace);
    }
  }

  @override
  Future<CharactersEntity> nextPageCharacters({required String request}) async {
    final response = await dio.get(request);
    try {
      return CharactersModels.fromJson(response.data);
    } on Object catch (error, stackTrace) {
      Error.throwWithStackTrace(error, stackTrace);
    }
  }
}
