import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/repository/characters_repo.dart';

@injectable
class NextPageUseCase {
  final CharactersRepo charactersRepo;

  NextPageUseCase({required this.charactersRepo});

  Future<CharactersEntity> nextPageCharacters({
    required String request,
  }) async {
    final result = await charactersRepo.nextPageCharacters(
      request: request,
    );
    return result;
  }
}
