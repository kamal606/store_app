import 'package:hive/hive.dart';
import 'package:store_app/core/classes/hive_const.dart';

class CheckLanguageSettings {
  static Future<void> putLanguage() async {
    await Hive.box(AppHive.checkLanguage).put(AppHive.checkLanguage, true);
  }

  static Future<void> deleteLanguage() async {
    await Hive.box(AppHive.checkLanguage).delete(AppHive.checkLanguage);
  }

  static bool getLanguage() {
    return Hive.box(AppHive.checkLanguage).get(AppHive.checkLanguage) ?? false;
  }
}
