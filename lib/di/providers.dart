import 'package:anime_new/data/datasources/animes_remote_data_source.dart';
import 'package:anime_new/data/datasources/characters_remote_data_source.dart';
import 'package:anime_new/data/datasources/top_manga_remote_data_source.dart';
import 'package:anime_new/data/repository/characters_repository_impl.dart';
import 'package:anime_new/data/repository/repository.dart';
import 'package:anime_new/data/repository/top_manga_repository_impl.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/repository/characters_repository.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Providers {
  List<SingleChildWidget> get providers => <SingleChildWidget>[
        Provider<AnimesRemoteDataSource>(
          create: (BuildContext context) => AnimesRemoteDataSource(),
        ),
        Provider<AnimesRepository>(
          create: (BuildContext context) => AnimesRepositoryImpl(
            remoteDataSource: context.read<AnimesRemoteDataSource>(),
          ),
        ),
        Provider<CharactersRemoteDataSource>(
          create: (BuildContext context) => CharactersRemoteDataSource(),
        ),
        Provider<CharactersRepository>(
          create: (BuildContext context) => CharactersRepositoryImpl(
            charactersRemoteDataSource:
                context.read<CharactersRemoteDataSource>(),
          ),
        ),
        Provider<TopMangaRemoteDataSource>(
          create: (BuildContext context) => TopMangaRemoteDataSource(),
        ),
        Provider<TopMangaRepository>(
          create: (BuildContext context) => TopMangaRepositoryImpl(
            topMangaRemoteDataSource: context.read<TopMangaRemoteDataSource>(),
          ),
        ),
      ];
}
