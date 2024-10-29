import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/data/models/location_models.dart';

class CharactersDetailModel extends CharactersDetailEntity {
  const CharactersDetailModel({
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

  factory CharactersDetailModel.fromJson(Map<String, dynamic> json) =>
      CharactersDetailModel(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: OriginModel.fromJson(json["origin"]),
        location: LocationModel.fromJson(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: json["created"],
      );
}

class OriginModel extends OriginEntity {
  const OriginModel({
    required super.name,
    required super.url,
  });

  factory OriginModel.fromJson(Map<String, dynamic> json) => OriginModel(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
