import 'dart:convert';
import 'package:anime_new/data/entity/entities.dart';
import 'package:http/http.dart' as http;


class AnimesRemoteDataSource {
  Future<List<AnimeEntity>> fetchAnimes() async {
    final http.Response response =
        await http.get(Uri.parse('https://api.jikan.moe/v4/top/anime'));

    if (response.statusCode == 200) {
      final String responseBody = response.body;
      final Map<String, dynamic> decodedResponseBody =
          jsonDecode(responseBody) as Map<String, dynamic>;
      final List<AnimeEntity> data =
          AnimeResponseEntity.fromJson(decodedResponseBody).data;
      return data;
    } else {
      throw Exception('Failed to load');
    }
  }
}
