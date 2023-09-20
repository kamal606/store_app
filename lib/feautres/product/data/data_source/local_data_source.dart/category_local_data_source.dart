import 'package:hive/hive.dart';
import 'package:store_app/core/constant/hive_const.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

abstract class CategoryLocalDataSource {
  List<CategoryEntity> getCategory();
}

class CategoryLocalDataSourceImpl implements CategoryLocalDataSource {
  @override
  List<CategoryEntity> getCategory() {
    var box = Hive.box<CategoryEntity>(AppHive.categoryBox);
    return box.values.toList();
  }
}
