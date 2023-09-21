import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/feautres/product/domain/use_cases/get_category_use_case.dart';

import '../../../domain/entities/category_entity.dart';

part 'get_category_event.dart';
part 'get_category_state.dart';

class GetCategoryBloc extends Bloc<GetCategoryEvent, GetCategoryState> {
  final GetCategoryUseCases getCategoryUseCases;
  GetCategoryBloc({required this.getCategoryUseCases})
      : super(GetCategoryInitial()) {
    on<GetCategoryEvent>((event, emit) async {
      if (event is GetCategory) {
        emit(GetCategoryLoading());
        final category = await getCategoryUseCases.call();
        category.fold((l) => emit(GetCategoryFailure(errMessage: l.message)),
            (r) => emit(GetCategorySuccess(category: r)));
      }
    });
  }
}
