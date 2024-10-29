import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';

abstract interface class CharactersRepo {
  Future<CharactersEntity> getCharacters({
    required int page,
    required String query,
    required String gender,
    required String status,
  });

  Future<CharactersEntity> nextPageCharacters({required String request});
}
