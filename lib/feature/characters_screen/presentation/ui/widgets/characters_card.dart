import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/components/shimmer.dart';
import 'package:rick_and_morty/core/components/utils.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/presentation/ui/feature.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/location_entity.dart';

class CharactersCard extends StatelessWidget {
  final CharactersDataEntity data;
  final bool isPlaceholder;
  const CharactersCard(
      {super.key, required this.data, this.isPlaceholder = false});

  factory CharactersCard.placeholder() {
    return const CharactersCard(
      isPlaceholder: true,
      data: CharactersDataEntity(
        id: 1,
        name: 'qwertywqwqw qwqwq',
        status: 'qwqwqwq',
        species: 'qwqwqwqw',
        type: 'qwqw',
        gender: 'qwqwqwq',
        origin: LocationEntity(name: '', url: ''),
        location: LocationEntity(name: '', url: ''),
        image: '',
        episode: [],
        url: '',
        created: '',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    return GestureDetector(
      onTap: () {
        navigateTo(
          context: context,
          rootNavigator: true,
          screen: CharactersDetailScreenFeature(id: data.id),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            ShimmerPlaceholder(
              isEnabled: isPlaceholder,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: data.image,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator.adaptive()),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.person_2_outlined),
                  fit: BoxFit.cover,
                  width: 74,
                  height: 74,
                ),
              ),
            ),
            const SizedBox(width: 18),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerPlaceholder(
                  isEnabled: isPlaceholder,
                  child: Text(
                    data.status,
                    style: theme.typography.s10w400.copyWith(
                      color: data.status == 'Dead'
                          ? theme.colors.red
                          : theme.colors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                ShimmerPlaceholder(
                  isEnabled: isPlaceholder,
                  child: Text(
                    data.name,
                    style: theme.typography.s14w400
                        .copyWith(color: theme.colors.textColor),
                  ),
                ),
                const SizedBox(height: 4),
                ShimmerPlaceholder(
                  isEnabled: isPlaceholder,
                  child: Text(
                    '${data.species} ${data.gender}',
                    style: theme.typography.s12w400.copyWith(
                      color: theme.colors.grey,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
