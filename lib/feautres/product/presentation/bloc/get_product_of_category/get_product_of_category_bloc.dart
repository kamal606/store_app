import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/feautres/product/domain/entities/product_entity.dart';
import 'package:store_app/feautres/product/domain/use_cases/get_products_of_category_use_case.dart';

part 'get_product_of_category_event.dart';
part 'get_product_of_category_state.dart';

class GetProductOfCategoryBloc
    extends Bloc<GetProductOfCategoryEvent, GetProductOfCategoryState> {
  final GetProductOfCategoryUseCase getProductOfCategoryUseCase;

  GetProductOfCategoryBloc({
    required this.getProductOfCategoryUseCase,
  }) : super(GetProductOfCategoryInitial()) {
    on<GetProductOfCategoryEvent>((event, emit) async {
      if (event is GetProductOfCategory) {
        emit(GetProductOfCategoryLoading());
        final getProducts = await getProductOfCategoryUseCase.call();
        getProducts.fold(
            (l) => emit(GetProductOfCategoryFailure(errMessage: l.message)),
            (r) => emit(GetProductOfCategorySuccess(products: r)));
      }
    });
  }
}
