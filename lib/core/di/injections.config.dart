// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/characters_detail_screen/data/data_source/characters_detail_data_source.dart'
    as _i952;
import '../../feature/characters_detail_screen/data/repository/characters_detail_repo_impl.dart'
    as _i242;
import '../../feature/characters_detail_screen/domain/repository/repository.dart'
    as _i329;
import '../../feature/characters_detail_screen/domain/use_case/get_characters_details_usecase.dart'
    as _i718;
import '../../feature/characters_detail_screen/presentation/state/bloc/characters_detail_screen_bloc.dart'
    as _i1051;
import '../../feature/characters_screen/data/data_source/characters_data_source.dart'
    as _i1043;
import '../../feature/characters_screen/data/repository/characters_repo_impl.dart'
    as _i729;
import '../../feature/characters_screen/domain/repository/characters_repo.dart'
    as _i963;
import '../../feature/characters_screen/domain/usecase/get_characters_usecase.dart'
    as _i659;
import '../../feature/characters_screen/domain/usecase/next_page_usecase.dart'
    as _i904;
import '../../feature/characters_screen/presentation/state/bloc/characters_screen_bloc.dart'
    as _i332;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i1043.CharactersDataSource>(
      () => _i1043.CharactersDataSourceImpl());
  gh.lazySingleton<_i952.CharactersDetailDataSource>(
      () => _i952.CharactersDetailDataSourceImpl());
  gh.lazySingleton<_i329.CharactersDetailRepo>(() =>
      _i242.CharactersDetailRepoImpl(
          dataSource: gh<_i952.CharactersDetailDataSource>()));
  gh.lazySingleton<_i963.CharactersRepo>(() => _i729.CharactersRepoImpl(
      charactersDataSource: gh<_i1043.CharactersDataSource>()));
  gh.factory<_i718.GetCharactersDetailsUseCase>(() =>
      _i718.GetCharactersDetailsUseCase(
          repo: gh<_i329.CharactersDetailRepo>()));
  gh.factory<_i904.NextPageUseCase>(
      () => _i904.NextPageUseCase(charactersRepo: gh<_i963.CharactersRepo>()));
  gh.factory<_i659.GetCharactersUseCase>(
      () => _i659.GetCharactersUseCase(gh<_i963.CharactersRepo>()));
  gh.factory<_i332.CharactersScreenBloc>(() => _i332.CharactersScreenBloc(
        gh<_i659.GetCharactersUseCase>(),
        gh<_i904.NextPageUseCase>(),
      ));
  gh.factory<_i1051.CharactersDetailScreenBloc>(() =>
      _i1051.CharactersDetailScreenBloc(
          gh<_i718.GetCharactersDetailsUseCase>()));
  return getIt;
}
