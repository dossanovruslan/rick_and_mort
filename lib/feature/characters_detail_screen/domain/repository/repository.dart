import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';

abstract interface class CharactersDetailRepo {
  Future<CharactersDetailEntity> getCharactersDetails({required int id});
}
