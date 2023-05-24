// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_images_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnimeImagesEntityAdapter extends TypeAdapter<AnimeImagesEntity> {
  @override
  final int typeId = 2;

  @override
  AnimeImagesEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnimeImagesEntity(
      jpg: fields[0] as AnimeJpgEntity,
    );
  }

  @override
  void write(BinaryWriter writer, AnimeImagesEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.jpg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeImagesEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeImagesEntity _$AnimeImagesEntityFromJson(Map<String, dynamic> json) =>
    AnimeImagesEntity(
      jpg: AnimeJpgEntity.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeImagesEntityToJson(AnimeImagesEntity instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
    };
