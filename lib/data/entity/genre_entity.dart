import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'genre_entity.g.dart';

@JsonSerializable()
class GenreEntity implements Genre {

  const GenreEntity({
    required this.malId,
    this.type,
    this.name,
  });

  //flutter pub run build_runner build
  factory GenreEntity.fromJson(Map<String, dynamic> json) =>
      _$GenreEntityFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int malId;

  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  @JsonKey(name: 'name')
  final String? name;
}