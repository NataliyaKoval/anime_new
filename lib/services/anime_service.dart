import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/anime.dart';

Future<List<Anime>> fetchAnimes() async {
  final response = await http
      .get(Uri.parse('https://api.jikan.moe/v4/top/anime'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> decodedResponseBody = jsonDecode(response.body);
    final List<dynamic> data = decodedResponseBody['data'];

    return List.from(data)
        .map((e) => Anime.fromJson(e as Map<String, dynamic> ))
        .whereType<Anime>().toList();
  } else {
    throw Exception('Failed to load');
  }
}