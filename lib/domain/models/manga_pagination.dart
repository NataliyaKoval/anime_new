import 'package:json_annotation/json_annotation.dart';

part 'manga_pagination.g.dart';

@JsonSerializable()
class MangaPagination {

  MangaPagination({
    required this.hasNextPage,
    required this.currentPage,
  });

  //flutter pub run build_runner build
  factory MangaPagination.fromJson(Map<String, dynamic> json) =>
      _$MangaPaginationFromJson(json);

  bool hasNextPage;
  int currentPage;
}