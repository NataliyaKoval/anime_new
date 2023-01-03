import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_pagination_entity.g.dart';

@JsonSerializable()
class MangaPaginationEntity implements MangaPagination {

  MangaPaginationEntity({
    required this.hasNextPage,
    required this.currentPage,
  });

  //flutter pub run build_runner build
  factory MangaPaginationEntity.fromJson(Map<String, dynamic> json) =>
      _$MangaPaginationEntityFromJson(json);

  @override
  @JsonKey(name: 'has_next_page')
  bool hasNextPage;

  @override
  @JsonKey(name: 'current_page')
  int currentPage;
}