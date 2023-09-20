import 'package:hive/hive.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

void saveDataLocal(List<CategoryEntity> categories, String nameBox) {
  var box = Hive.box(nameBox);
  box.addAll(categories);
}
