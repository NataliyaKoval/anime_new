import 'package:anime_new/data/datasources/local_database.dart';
import 'package:anime_new/data/datasources/rest_api_client.dart';
import 'package:anime_new/data/repository/animes_repository_impl.dart';
import 'package:anime_new/data/repository/top_manga_repository_impl.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Providers {
  List<SingleChildWidget> get providers => <SingleChildWidget>[
        Provider<Dio>(
          create: (BuildContext context) => Dio(),
        ),
        Provider<RestApiClient>(
          create: (BuildContext context) => RestApiClient(
            context.read<Dio>(),
          ),
        ),
        Provider<LocalDatabase>(
          create: (BuildContext context) => LocalDatabase(),
        ),
        Provider<AnimesRepository>(
          create: (BuildContext context) => AnimesRepositoryImpl(
            restApiClient: context.read<RestApiClient>(),
            localDatabase: context.read<LocalDatabase>(),
          ),
        ),
        Provider<TopMangaRepository>(
          create: (BuildContext context) => TopMangaRepositoryImpl(
            restApiClient: context.read<RestApiClient>(),
          ),
        ),
      ];
}
