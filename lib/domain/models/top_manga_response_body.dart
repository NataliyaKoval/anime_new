import 'package:anime_new/domain/models/manga.dart';
import 'package:anime_new/domain/models/manga_pagination.dart';
import 'package:json_annotation/json_annotation.dart';

part 'top_manga_response_body.g.dart';

@JsonSerializable()
class TopMangaResponseBody {
  TopMangaResponseBody({required this.data, required this.pagination});

  //flutter pub run build_runner build
  factory TopMangaResponseBody.fromJson(Map<String, dynamic> json) =>
      _$TopMangaResponseBodyFromJson(json);

  final MangaPagination pagination;
  final List<Manga> data;
}
