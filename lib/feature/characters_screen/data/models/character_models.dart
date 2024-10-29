import 'package:rick_and_morty/feature/characters_screen/data/models/location_models.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';

class CharactersModels extends CharactersEntity {
  const CharactersModels({
    required super.info,
    required super.results,
  });

  factory CharactersModels.fromJson(Map<String, dynamic> json) =>
      CharactersModels(
        info: CharactersInfoModel.fromJson(json["info"]),
        results: List<CharactersDataModel>.from(
            json["results"].map((x) => CharactersDataModel.fromJson(x))),
      );
}

class CharactersInfoModel extends CharactersInfo {
  const CharactersInfoModel({
    required super.count,
    required super.pages,
    required super.next,
    required super.prev,
  });

  factory CharactersInfoModel.fromJson(Map<String, dynamic> json) =>
      CharactersInfoModel(
        count: json["count"] ?? 0,
        pages: json["pages"] ?? 0,
        next: json["next"] ?? '',
        prev: json["prev"],
      );
}

class CharactersDataModel extends CharactersDataEntity {
  const CharactersDataModel({
    required super.id,
    required super.name,
    required super.status,
    required super.species,
    required super.type,
    required super.gender,
    required super.origin,
    required super.location,
    required super.image,
    required super.episode,
    required super.url,
    required super.created,
  });

  factory CharactersDataModel.fromJson(Map<String, dynamic> json) =>
      CharactersDataModel(
        id: json["id"] ?? 0,
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: LocationModel.fromJson(json["origin"]),
        location: LocationModel.fromJson(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: json["created"],
      );
}
