import 'package:dartz/dartz.dart';
import '../model/products_response/ProductsResponse.dart';

abstract class ProductsDatasource{
  Future<Either<ProductsResponse, String>> getProducts();
}