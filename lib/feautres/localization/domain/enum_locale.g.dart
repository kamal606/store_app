// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_locale.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLanguageAdapter extends TypeAdapter<AppLanguage> {
  @override
  final int typeId = 3;

  @override
  AppLanguage read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppLanguage.arabic;
      case 1:
        return AppLanguage.english;
      default:
        return AppLanguage.arabic;
    }
  }

  @override
  void write(BinaryWriter writer, AppLanguage obj) {
    switch (obj) {
      case AppLanguage.arabic:
        writer.writeByte(0);
        break;
      case AppLanguage.english:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLanguageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
