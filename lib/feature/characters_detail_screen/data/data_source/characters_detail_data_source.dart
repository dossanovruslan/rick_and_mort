import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/data/models/characters_detail_model.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';

abstract interface class CharactersDetailDataSource {
  Future<CharactersDetailEntity> getCharacters({
    required int id,
  });
}

@LazySingleton(as: CharactersDetailDataSource)
class CharactersDetailDataSourceImpl implements CharactersDetailDataSource {
  final dio = Dio();

  @override
  Future<CharactersDetailEntity> getCharacters({required int id}) async {
    final response = await dio.get(
      '${AppConstants.baseUrl}character/$id',
    );
    try {
      if (response.statusCode == 200) {
        return CharactersDetailModel.fromJson(response.data);
      } else {
        throw Exception('Response status code ${response.statusCode}');
      }
    } on Object catch (error, stackTrace) {
      Error.throwWithStackTrace(error, stackTrace);
    }
  }
}
