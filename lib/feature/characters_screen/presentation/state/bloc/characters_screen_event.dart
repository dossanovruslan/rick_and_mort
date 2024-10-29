part of 'characters_screen_bloc.dart';

@freezed
class CharactersScreenEvent with _$CharactersScreenEvent {
  const factory CharactersScreenEvent.getCharactersEvent({
    required int page,
    required String query,
    String? gender,
    String? status,
  }) = GetCharactersEvent;

  const factory CharactersScreenEvent.getNextPageEvent() = GetNextPageEvent;
}
