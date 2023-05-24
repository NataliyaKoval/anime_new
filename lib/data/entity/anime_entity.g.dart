// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimeEntityAdapter extends TypeAdapter<AnimeEntity> {
  @override
  final int typeId = 1;

  @override
  AnimeEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnimeEntity(
      id: fields[0] as int,
      url: fields[1] as String,
      title: fields[2] as String,
      images: fields[3] as AnimeImagesEntity?,
      titleJapanese: fields[4] as String,
      synopsis: fields[5] as String,
      year: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AnimeEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.images)
      ..writeByte(4)
      ..write(obj.titleJapanese)
      ..writeByte(5)
      ..write(obj.synopsis)
      ..writeByte(6)
      ..write(obj.year);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeEntity _$AnimeEntityFromJson(Map<String, dynamic> json) => AnimeEntity(
      id: json['mal_id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      images: json['images'] == null
          ? null
          : AnimeImagesEntity.fromJson(json['images'] as Map<String, dynamic>),
      titleJapanese: json['title_japanese'] as String,
      synopsis: json['synopsis'] as String,
      year: json['year'] as int?,
    );

Map<String, dynamic> _$AnimeEntityToJson(AnimeEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'images': instance.images,
      'title_japanese': instance.titleJapanese,
      'synopsis': instance.synopsis,
      'year': instance.year,
    };
