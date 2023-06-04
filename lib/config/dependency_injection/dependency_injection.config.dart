// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_arch_with_riverpod/core/dio/cusotm_interceptor.dart'
    as _i4;
import 'package:clean_arch_with_riverpod/core/network/network_info.dart' as _i5;
import 'package:clean_arch_with_riverpod/core/service/api_service.dart' as _i7;
import 'package:clean_arch_with_riverpod/core/service/api_service_impl.dart'
    as _i8;
import 'package:clean_arch_with_riverpod/core/service/app_module.dart' as _i14;
import 'package:clean_arch_with_riverpod/features/authentication/data/data_source/remote/user_list_remote_data_source.dart'
    as _i9;
import 'package:clean_arch_with_riverpod/features/authentication/data/data_source/remote/user_list_remote_data_source_imp.dart'
    as _i10;
import 'package:clean_arch_with_riverpod/features/authentication/data/repository_impl/user_list_repositrory_impl.dart'
    as _i12;
import 'package:clean_arch_with_riverpod/features/authentication/domain/repository/user_list_repository.dart'
    as _i11;
import 'package:clean_arch_with_riverpod/features/authentication/domain/usecase/userListUseCase.dart'
    as _i13;
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Connectivity>(() => appModule.checkDataConnection);
    gh.lazySingleton<_i4.CustomInterceptor>(() => _i4.CustomInterceptor());
    gh.factory<_i5.NetworkInfo>(() => _i5.NetworkInfo(gh<_i3.Connectivity>()));
    gh.factory<String>(
      () => appModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i6.Dio>(() => appModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i4.CustomInterceptor>(),
        ));
    gh.singleton<_i7.ApiService>(_i8.ApiServiceImpl(
      dio: gh<_i6.Dio>(),
      networkInfo: gh<_i5.NetworkInfo>(),
    ));
    gh.factory<_i9.UserListRemoteDataSource>(() =>
        _i10.UserListRemoteDataSourceImpl(apiService: gh<_i7.ApiService>()));
    gh.factory<_i11.UserListRepository>(() => _i12.UserListRepositoryImpl(
        datasource: gh<_i9.UserListRemoteDataSource>()));
    gh.factory<_i13.GetUserUseCase>(() =>
        _i13.GetUserUseCase(userListRepository: gh<_i11.UserListRepository>()));
    return this;
  }
}

class _$AppModule extends _i14.AppModule {}
