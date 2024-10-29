import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/repository/repository.dart';

@injectable
class GetCharactersDetailsUseCase {
  final CharactersDetailRepo repo;

  GetCharactersDetailsUseCase({required this.repo});

  Future<CharactersDetailEntity> getCharactersDetails({required int id}) async {
    final result = await repo.getCharactersDetails(id: id);
    return result;
  }
}
