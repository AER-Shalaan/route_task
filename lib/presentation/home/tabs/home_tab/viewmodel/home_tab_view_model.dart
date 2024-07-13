import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../domain/entities/ProductEntity.dart';
import '../../../../../domain/use_cases/products_use_case.dart';

@injectable
class HomeTabViewModel extends Cubit<HomeTabStates>{
  @factoryMethod
  HomeTabViewModel(this.productsUseCase):super(HomeTabInitialStates());

  ProductsUseCase productsUseCase;
  getProducts() async {
    emit(HomeTabLoadingStates());
    var result = await productsUseCase.call();
    result.fold((products) {
      emit(HomeTabSuccessStates(products));
    }, (error) {
      emit(HomeTabErrorStates(error));
    });
  }
}

abstract class HomeTabStates{}
class HomeTabInitialStates extends HomeTabStates{}
class HomeTabLoadingStates extends HomeTabStates{}
class HomeTabSuccessStates extends HomeTabStates{
  List<ProductEntity> products;
  HomeTabSuccessStates(this.products);
}
class HomeTabErrorStates extends HomeTabStates{
  String error;
  HomeTabErrorStates(this.error);
}

