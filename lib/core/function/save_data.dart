import 'package:hive/hive.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

void saveDataLocal(List<CategoryEntity> categories, String nameBox) async {
  var box = Hive.box(nameBox);
  await box.addAll(categories);
}
