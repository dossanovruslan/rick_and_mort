import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/core/di/injections.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/state/bloc/characters_screen_bloc.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/screens/characters_screen.dart';
import 'package:rick_and_morty/feature/home_screen/view_model/home_screen_vm.dart';

CupertinoPageRoute charactersScreenRoute(RouteSettings route) {
  return CupertinoPageRoute(
    settings: route,
    builder: (context) => BlocProvider<CharactersScreenBloc>(
      create: (context) => locator(),
      child: ChangeNotifierProvider(
        create: (_) => HomeScreenViewModel(),
        child: const CharactersScreen(),
      ),
    ),
  );
}
