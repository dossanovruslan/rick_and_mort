import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/use_case/get_characters_details_usecase.dart';

part 'characters_detail_screen_event.dart';
part 'characters_detail_screen_state.dart';
part 'characters_detail_screen_bloc.freezed.dart';

@injectable
class CharactersDetailScreenBloc
    extends Bloc<CharactersDetailScreenEvent, CharactersDetailScreenState> {
  final GetCharactersDetailsUseCase getCharactersDetailsUseCase;

  CharactersDetailScreenBloc(this.getCharactersDetailsUseCase)
      : super(const CharactersDetailScreenInitial()) {
    on<CharactersDetailScreenEvent>((event, emit) async {
      try {
        emit(const CharactersDetailScreenState.loading());
        final result = await getCharactersDetailsUseCase.getCharactersDetails(
          id: event.id,
        );
        emit(CharactersDetailScreenState.loaded(result));
      } on Exception catch (e) {
        emit(CharactersDetailScreenState.error(e.toString()));
      }
    });
  }
}
