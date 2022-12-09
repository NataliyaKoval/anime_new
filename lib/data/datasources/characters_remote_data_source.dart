import 'dart:convert';

import 'package:anime_new/data/entity/entities.dart';
import 'package:http/http.dart' as http;

class CharactersRemoteDataSource {
  Future<List<AnimeCharacterEntity>> fetchCharacters(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://api.jikan.moe/v4/anime/$id/characters'));

    if (response.statusCode == 200) {
      final String responseBody = response.body;
      final Map<String, dynamic> decodedResponseBody =
      jsonDecode(responseBody) as Map<String, dynamic>;
      final List<AnimeCharacterEntity> data =
          AnimeCharacterResponseBodyEntity.fromJson(decodedResponseBody).data;
      print(id);
      return data;
    } else {
      throw Exception('Failed to load');
    }
  }
}
