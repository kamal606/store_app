import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_app/feautres/product/domain/entities/product_entity.dart';
import 'package:store_app/feautres/product/domain/use_cases/get_products_of_category_use_case.dart';

part 'get_product_of_category_event.dart';
part 'get_product_of_category_state.dart';

class AllProductsBloc extends Bloc<AllProductsStateEvent, AllProductsState> {
  final AllProductsUseCase getProductOfCategoryUseCase;

  AllProductsBloc({
    required this.getProductOfCategoryUseCase,
  }) : super(AllProductsStateInitial()) {
    on<AllProductsStateEvent>((event, emit) async {
      if (event is GetAllProductsEvent) {
        emit(AllProductsStateLoading());
        final getProducts = await getProductOfCategoryUseCase.call();
        getProducts.fold(
            (l) => emit(AllProductsStateFailure(errMessage: l.message)),
            (r) => emit(AllProductsStateSuccess(products: r)));
      }
    });
  }
}
