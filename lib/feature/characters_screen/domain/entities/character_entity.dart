import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/location_entity.dart';

class CharactersEntity extends Equatable {
  final CharactersInfo info;
  final List<CharactersDataEntity> results;

  const CharactersEntity({
    required this.info,
    required this.results,
  });

  @override
  List<Object?> get props => [info, results];
}

class CharactersInfo extends Equatable {
  final int? count;
  final int? pages;
  final String? next;
  final dynamic prev;

  const CharactersInfo({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  @override
  List<Object?> get props => [count, pages, next, prev];
}

class CharactersDataEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final LocationEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  const CharactersDataEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        origin,
        location,
        image,
        episode,
        url,
        created,
      ];
}
