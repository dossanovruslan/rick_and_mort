import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/characters_card.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/characters_grid_card.dart';

class LoadingPlaceholder extends StatelessWidget {
  final bool listType;
  const LoadingPlaceholder({super.key, required this.listType});

  @override
  Widget build(BuildContext context) {
    return listType
        ? ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return CharactersCard.placeholder();
            },
          )
        : GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 30, crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: 10,
            itemBuilder: (context, index) => CharactersGridCard.placeholder(),
          );
  }
}
