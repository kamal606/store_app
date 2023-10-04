import 'package:hive/hive.dart';
import 'package:store_app/core/classes/hive_const.dart';

class SaveStartViewAppLocal {
  static Future<Box> openBox() async {
    Box box = await Hive.openBox(AppHive.startApp);
    return box;
  }

  static Future<void> addViewStartApp(Box box) async {
    await box.put(AppHive.startApp, true);
  }

  static Future<bool> getIsOpen(Box box) async {
    return await box.get(AppHive.startApp) ?? false;
  }
}
