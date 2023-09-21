import 'package:hive/hive.dart';

void saveDataLocal(List<String> categories, String nameBox) async {
  var box = Hive.box(nameBox);
  await box.addAll(categories);
}
