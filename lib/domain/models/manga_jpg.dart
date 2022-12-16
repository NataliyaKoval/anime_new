import 'package:json_annotation/json_annotation.dart';

part 'manga_jpg.g.dart';

@JsonSerializable()
class MangaJpg {

  MangaJpg(this.imageUrl, this.smallImageUrl);

  //flutter pub run build_runner build
  factory MangaJpg.fromJson(Map<String, dynamic> json) => _$MangaJpgFromJson(json);

  final String? imageUrl;
  final String? smallImageUrl;
}