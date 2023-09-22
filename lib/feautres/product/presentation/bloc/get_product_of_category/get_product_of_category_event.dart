part of 'get_product_of_category_bloc.dart';

@immutable
sealed class GetProductOfCategoryEvent {}

class GetProductOfCategory extends GetProductOfCategoryEvent {
  GetProductOfCategory();
}
