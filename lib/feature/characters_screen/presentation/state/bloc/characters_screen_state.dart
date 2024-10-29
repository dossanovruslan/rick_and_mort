part of 'characters_screen_bloc.dart';

@freezed
class CharactersScreenState with _$CharactersScreenState {
  const factory CharactersScreenState.initial() = CharactersScreenInitial;
  const factory CharactersScreenState.loading() = CharactersLoadingState;
  const factory CharactersScreenState.loaded({
    required List<CharactersDataEntity> charactersList,
    required int count,
    required bool isLoading,
  }) = CharactersLoadedState;
  const factory CharactersScreenState.error(String errorMessage) =
      CharactersErrorState;
}
