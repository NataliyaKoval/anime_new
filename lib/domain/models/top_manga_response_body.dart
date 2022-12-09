import 'package:anime_new/domain/models/manga.dart';
import 'package:json_annotation/json_annotation.dart';

part 'top_manga_response_body.g.dart';

@JsonSerializable()
class TopMangaResponseBody {
  TopMangaResponseBody(this.data);

  //flutter pub run build_runner build
  factory TopMangaResponseBody.fromJson(Map<String, dynamic> json) => _$TopMangaResponseBodyFromJson(json);

  final List<Manga> data;
}
