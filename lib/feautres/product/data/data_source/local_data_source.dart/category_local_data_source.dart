import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

abstract class CategoryLocalDataSource {
  List<CategoryEntity> getCategory();
}

class CategoryLocalDataSourceImpl implements CategoryLocalDataSource {
  @override
  List<CategoryEntity> getCategory() {
    // TODO: implement getCategory
    throw UnimplementedError();
  }
}
