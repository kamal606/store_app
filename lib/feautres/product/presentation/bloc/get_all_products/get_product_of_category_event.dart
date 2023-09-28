part of 'get_product_of_category_bloc.dart';

@immutable
sealed class AllProductsStateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetAllProductsEvent extends AllProductsStateEvent {
  GetAllProductsEvent();

  @override
  List<Object?> get props => [];
}
