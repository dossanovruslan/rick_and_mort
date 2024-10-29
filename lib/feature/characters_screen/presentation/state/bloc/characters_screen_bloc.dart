import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error_parser.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/usecase/get_characters_usecase.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/usecase/next_page_usecase.dart';

part 'characters_screen_event.dart';
part 'characters_screen_state.dart';
part 'characters_screen_bloc.freezed.dart';

@injectable
class CharactersScreenBloc
    extends Bloc<CharactersScreenEvent, CharactersScreenState> {
  final GetCharactersUseCase _charactersUseCase;
  final NextPageUseCase _nextPageUseCase;

  CharactersScreenBloc(
    this._charactersUseCase,
    this._nextPageUseCase,
  ) : super(const CharactersScreenInitial()) {
    String? nextPage;

    on<GetCharactersEvent>((event, emit) async {
      try {
        emit(const CharactersScreenState.loading());

        final response = await _charactersUseCase.getCharacters(
          page: event.page,
          query: event.query,
          gender: event.gender ?? '',
          status: event.status ?? '',
        );
        nextPage = response.info.next;

        emit(
          CharactersScreenState.loaded(
            isLoading: false,
            charactersList: response.results,
            count: response.info.count ?? 0,
          ),
        );
      } catch (e) {
        emit(CharactersScreenState.error(ErrorParser.errorParse(e)));
      }
    });

    on<GetNextPageEvent>((event, emit) async {
      try {
        final currentState = state as CharactersLoadedState;
        if (currentState.isLoading) {
          return;
        }
        emit(
          CharactersScreenState.loaded(
            isLoading: true,
            charactersList: currentState.charactersList,
            count: currentState.count,
          ),
        );

        if (nextPage != null) {
          final response =
              await _nextPageUseCase.nextPageCharacters(request: nextPage!);

          nextPage = response.info.next;

          emit(
            CharactersScreenState.loaded(
              isLoading: false,
              charactersList: [
                ...currentState.charactersList,
                ...response.results
              ],
              count: response.info.count ?? 0,
            ),
          );
        }
      } on Exception catch (e) {
        emit(CharactersScreenState.error(e.toString()));
      }
    });

    add(const CharactersScreenEvent.getCharactersEvent(page: 1, query: ''));
  }
}
