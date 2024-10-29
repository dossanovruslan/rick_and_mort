import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters_screen/data/data_source/characters_data_source.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/repository/characters_repo.dart';

@LazySingleton(as: CharactersRepo)
class CharactersRepoImpl implements CharactersRepo {
  final CharactersDataSource charactersDataSource;

  CharactersRepoImpl({required this.charactersDataSource});
  @override
  Future<CharactersEntity> getCharacters({
    required int page,
    required String query,
    required String gender,
    required String status,
  }) async {
    final result = await charactersDataSource.getCharacters(
      page: page,
      query: query,
      gender: gender,
      status: status,
    );

    return result;
  }

  @override
  Future<CharactersEntity> nextPageCharacters({required String request}) async {
    final result = await charactersDataSource.nextPageCharacters(
      request: request,
    );

    return result;
  }
}
