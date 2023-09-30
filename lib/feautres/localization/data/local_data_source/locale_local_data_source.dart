import 'package:hive/hive.dart';
import 'package:store_app/core/classes/hive_const.dart';
import 'package:store_app/feautres/localization/domain/enum_locale.dart';

abstract class LocaleLocalDataSource {
  Future<Box> openBox();
  Future<void> addLocale(Box box, AppLanguage appLanguage);
  Future<AppLanguage> getLocale(Box box);
}

class LocaleLocalDataSourceImpl implements LocaleLocalDataSource {
  @override
  Future<Box> openBox() async {
    Box box = await Hive.openBox(AppHive.locale);
    return box;
  }

  @override
  Future<void> addLocale(Box box, AppLanguage appLanguage) async {
    await box.put(AppHive.locale, appLanguage);
  }

  @override
  Future<AppLanguage> getLocale(Box box) async {
    final locale = box.get(AppHive.locale);
    if (locale == null) {
      return AppLanguage.english;
    } else {
      return locale;
    }
  }
}
