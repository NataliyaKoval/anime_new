import 'package:anime_new/domain/models/character_images.dart';

class Character {
  Character({
    required this.id,
    required this.name,
    this.images,
  });

  final int id;
  final String name;
  final CharacterImages? images;
}
