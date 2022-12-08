import 'dart:convert';
import 'package:http/http.dart' as http;
import '../entity/anime_entity.dart';
import '../entity/anime_response_entity.dart';

class AnimesRemoteDataSource {

  Future<List<AnimeEntity>> fetchAnimes() async {
    final http.Response response =
        await http.get(Uri.parse('https://api.jikan.moe/v4/top/anime'));

    if (response.statusCode == 200) {
      // final Map<String, dynamic> decodedResponseBody =
      //     jsonDecode(response.body) as Map<String, dynamic>;
      // final List<AnimeEntity> data = decodedResponseBody['data'] as List<AnimeEntity>;

      final String responseBody = response.body;
      final Map<String, dynamic> decodedResponseBody = jsonDecode(responseBody) as Map<String, dynamic>;
      final List<AnimeEntity> data = AnimeResponseEntity.fromJson(decodedResponseBody).data;

      // print(data);
      return data;
      //     //.map((dynamic e) => AnimeEntity.fromJson(e as Map<String, dynamic>))
      //     .map((dynamic e) => print(e))
      //     .whereType<AnimeEntity>()
      //     .toList();
    } else {
      throw Exception('Failed to load');
    }
  }
}
