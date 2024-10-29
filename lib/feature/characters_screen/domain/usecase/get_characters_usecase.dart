import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/repository/characters_repo.dart';

@injectable
class GetCharactersUseCase {
  final CharactersRepo charactersRepo;

  GetCharactersUseCase(this.charactersRepo);

  Future<CharactersEntity> getCharacters({
    required int page,
    required String query,
    required String gender,
    required String status,
  }) async {
    final result = await charactersRepo.getCharacters(
      page: page,
      query: query,
      gender: gender,
      status: status,
    );
    return result;
  }
}
