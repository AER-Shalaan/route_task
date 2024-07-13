// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasource_contract/products_datasource.dart' as _i4;
import '../../data/datasource_impl/products_datasource_impl.dart' as _i5;
import '../../data/repository_impl/products_repo_impl.dart' as _i7;
import '../../domain/repository_contracts/products_repo.dart' as _i6;
import '../../domain/use_cases/products_use_case.dart' as _i8;
import '../api/api_manager.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.ProductsDatasource>(
        () => _i5.ProductsDatasourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.ProductsRepo>(
        () => _i7.ProductsRepoImpl(gh<_i4.ProductsDatasource>()));
    gh.factory<_i8.ProductsUseCase>(
        () => _i8.ProductsUseCase(gh<_i6.ProductsRepo>()));
    return this;
  }
}
