import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/api/api_manager.dart';
import '../../core/api/endpoints.dart';
import '../datasource_contract/products_datasource.dart';
import '../model/products_response/ProductsResponse.dart';

@Injectable(as: ProductsDatasource)
class ProductsDatasourceImpl extends ProductsDatasource{
  ApiManager apiManager;

  @factoryMethod
  ProductsDatasourceImpl(this.apiManager);

  @override
  Future<Either<ProductsResponse, String>> getProducts() async {
    try{
      var response = await apiManager.getRequest(endpoint: Endpoints.productsEndpoint);
      ProductsResponse productsResponse = ProductsResponse.fromJson(response.data);
      return left(productsResponse);
    }catch(error){
      return right(error.toString());
    }
  }

}