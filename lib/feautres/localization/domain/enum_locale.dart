import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

part 'enum_locale.g.dart';

@HiveType(typeId: 3)
enum AppLanguage {
  @HiveField(0)
  arabic("Arabic"),
  @HiveField(1)
  english("English");

  const AppLanguage(this.name);
  final String name;
}

Map<AppLanguage, Locale> language = {
  AppLanguage.arabic: const Locale("ar"),
  AppLanguage.english: const Locale("en"),
};
