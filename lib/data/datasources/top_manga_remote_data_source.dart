import 'dart:convert';

import 'package:anime_new/data/entity/entities.dart';
import 'package:http/http.dart' as http;

class TopMangaRemoteDataSource {
  static const int _limit = 10;

  Future<TopMangaResponseBodyEntity> fetchTopManga(int page) async {
    final http.Response response = await http
        .get(Uri.parse(
            'https://api.jikan.moe/v4/top/manga?limit=$_limit&page=$page'));

    if (response.statusCode == 200) {
      final String responseBody = response.body;
      final Map<String, dynamic> decodedResponseBody =
          jsonDecode(responseBody) as Map<String, dynamic>;
      final TopMangaResponseBodyEntity data =
          TopMangaResponseBodyEntity.fromJson(decodedResponseBody);
      return data;

    } else {
      print(response.statusCode);
      throw Exception('Failed to load');
    }
  }
}
