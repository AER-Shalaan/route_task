import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/ProductEntity.dart';
import '../../domain/repository_contracts/products_repo.dart';
import '../datasource_contract/products_datasource.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl extends ProductsRepo{
  ProductsDatasource apiDatasource;
  @factoryMethod
  ProductsRepoImpl(this.apiDatasource);

  @override
  Future<Either<List<ProductEntity>, String>> getProducts() async {
    var result = await apiDatasource.getProducts();
    return result.fold((response) {
      var productsListModel = response.products??[];
      var products =productsListModel.map((product) => product.toProductEntity()).toList();
      return left(products);
    },(error) {
      return Right(error);
    });
  }

}