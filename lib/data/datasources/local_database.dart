import 'package:anime_new/data/entity/entities.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabase {
  final Box<AnimeEntity> favoriteAnimes =
      Hive.box<AnimeEntity>('favoriteAnimes');

  void addToFavorites(AnimeEntity anime) {
    favoriteAnimes.put(anime.id, anime);
  }

  void removeFromFavorites(int key) {
    favoriteAnimes.delete(key);
  }

  List<AnimeEntity> getFavoriteAnimes() {
    return favoriteAnimes.values.toList();
  }

  List<dynamic> getFavoriteAnimesKeys() {
    final List<dynamic> keys = favoriteAnimes.keys.toList();
    return keys;
  }

  void cleanFavorites() {
    favoriteAnimes.clear();
  }
}
