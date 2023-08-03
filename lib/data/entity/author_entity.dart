import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'author_entity.g.dart';

@JsonSerializable()
class AuthorEntity implements Author {
  const AuthorEntity({
    required this.malId,
    this.name,
    this.url,
  });

  //flutter pub run build_runner build
  factory AuthorEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthorEntityFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int malId;

  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  @JsonKey(name: 'url')
  final String? url;
}
