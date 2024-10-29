part of 'characters_detail_screen_bloc.dart';

@freezed
class CharactersDetailScreenEvent with _$CharactersDetailScreenEvent {
  const factory CharactersDetailScreenEvent.getData(int id) =
      GetCharactersDetailsData;
}
