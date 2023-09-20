import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/feautres/product/domain/entities/category_entity.dart';
import 'package:store_app/feautres/product/domain/use_cases/get_category_use_case.dart';

part 'get_category_event.dart';
part 'get_category_state.dart';

class GetCategoryBloc extends Bloc<GetCategoryEvent, GetCategoryState> {
  final GetCategoryUseCases getCategoryUseCases;
  GetCategoryBloc({required this.getCategoryUseCases})
      : super(GetCategoryInitial()) {
    on<GetCategory>(_onGetCategory);
  }

  void _onGetCategory(
    GetCategory event,
    Emitter<GetCategoryState> emit,
  ) async {
    emit(GetCategoryLoading());
    final getCategory = await getCategoryUseCases.call();

    getCategory.fold((failure) {
      emit(GetCategoryFailure(errMessage: failure.message));
    }, (category) {
      emit(GetCategorySuccess(category: category));
    });
  }
}
