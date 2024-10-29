part of 'characters_detail_screen_bloc.dart';

@freezed
class CharactersDetailScreenState with _$CharactersDetailScreenState {
  const factory CharactersDetailScreenState.initial() =
      CharactersDetailScreenInitial;
  const factory CharactersDetailScreenState.loading() =
      CharactersDetailScreenLoading;

  const factory CharactersDetailScreenState.loaded(
      CharactersDetailEntity data) = CharactersDetailScreenLoaded;

  const factory CharactersDetailScreenState.error(String errorMessage) =
      CharactersDetailScreenError;
}
