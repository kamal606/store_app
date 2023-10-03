import 'package:hive/hive.dart';
import 'package:store_app/core/classes/hive_const.dart';
import 'package:store_app/core/utils/go_router.dart';

class SaveOnBordingOnceLocalImpl {
  static Future<Box> openBox() async {
    Box box = await Hive.openBox(AppHive.onBording);
    return box;
  }

  static Future<void> addOnBording(Box box) async {
    await box.put(AppRouter.onBordingView, true);
  }

  static Future<bool> getIsOpen(Box box) async {
    return await box.get(AppRouter.onBordingView) ?? false;
  }
}
