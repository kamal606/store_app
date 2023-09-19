import 'package:store_app/feautres/product/domain/entities/category_entity.dart';

abstract class CategoryRepo {
  Future<List<CategoryNameEntity>> getCategory();
}
