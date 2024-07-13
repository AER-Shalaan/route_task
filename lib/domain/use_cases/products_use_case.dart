import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../entities/ProductEntity.dart';
import '../repository_contracts/products_repo.dart';

@injectable
class ProductsUseCase{
  ProductsRepo productsRepo;
  @factoryMethod
  ProductsUseCase(this.productsRepo);

  Future<Either<List<ProductEntity>, String>> call(){
    return productsRepo.getProducts();
  }
}