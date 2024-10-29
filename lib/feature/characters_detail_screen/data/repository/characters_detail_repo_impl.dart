import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/data/data_source/characters_detail_data_source.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/repository/repository.dart';

@LazySingleton(as: CharactersDetailRepo)
class CharactersDetailRepoImpl implements CharactersDetailRepo {
  final CharactersDetailDataSource dataSource;

  CharactersDetailRepoImpl({required this.dataSource});

  @override
  Future<CharactersDetailEntity> getCharactersDetails({required int id}) {
    return dataSource.getCharacters(id: id);
  }
}
