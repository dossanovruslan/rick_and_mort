import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/di/injections.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/presentation/state/bloc/characters_detail_screen_bloc.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/presentation/ui/screens/characters_detail_screen.dart';

class CharactersDetailScreenFeature extends StatelessWidget {
  final int id;
  const CharactersDetailScreenFeature({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersDetailScreenBloc>(
      create: (context) => locator(),
      child: CharactersDetailScreen(id: id),
    );
  }
}
