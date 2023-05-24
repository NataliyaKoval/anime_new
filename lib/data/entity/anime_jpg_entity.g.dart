// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_jpg_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimeJpgEntityAdapter extends TypeAdapter<AnimeJpgEntity> {
  @override
  final int typeId = 3;

  @override
  AnimeJpgEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnimeJpgEntity(
      imageUrl: fields[0] as String,
      smallImageUrl: fields[1] as String,
      largeImageUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AnimeJpgEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imageUrl)
      ..writeByte(1)
      ..write(obj.smallImageUrl)
      ..writeByte(2)
      ..write(obj.largeImageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeJpgEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeJpgEntity _$AnimeJpgEntityFromJson(Map<String, dynamic> json) =>
    AnimeJpgEntity(
      imageUrl: json['image_url'] as String,
      smallImageUrl: json['small_image_url'] as String,
      largeImageUrl: json['large_image_url'] as String,
    );

Map<String, dynamic> _$AnimeJpgEntityToJson(AnimeJpgEntity instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
    };
