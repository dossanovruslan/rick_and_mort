import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/location_entity.dart';

class CharactersDetailEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final OriginEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  const CharactersDetailEntity({
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

class OriginEntity extends Equatable {
  final String name;
  final String url;

  const OriginEntity({
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [name, url];
}
