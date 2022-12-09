import 'package:anime_new/domain/models/models.dart';

abstract class CharactersRepository {
  Future<List<AnimeCharacter>> fetchCharacters(int id);
}
