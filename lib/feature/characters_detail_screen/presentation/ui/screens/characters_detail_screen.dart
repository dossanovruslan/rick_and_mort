import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/characters_detail_entity.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/presentation/state/bloc/characters_detail_screen_bloc.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/presentation/ui/widgets/episode_card.dart';

class CharactersDetailScreen extends StatefulWidget {
  final int id;
  const CharactersDetailScreen({super.key, required this.id});

  @override
  State<CharactersDetailScreen> createState() => _CharactersDetailScreenState();
}

class _CharactersDetailScreenState extends State<CharactersDetailScreen> {
  @override
  void initState() {
    context
        .read<CharactersDetailScreenBloc>()
        .add(GetCharactersDetailsData(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final theme = AppThemeProvider.of(context).themeMode;
    return Scaffold(
      body:
          BlocBuilder<CharactersDetailScreenBloc, CharactersDetailScreenState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            loaded: (data) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ImageFiltered(
                              imageFilter:
                                  ImageFilter.blur(sigmaX: 3.5, sigmaY: 3.5),
                              child: CachedNetworkImage(
                                imageUrl: data.image,
                                placeholder: (context, url) => const Center(
                                    child:
                                        CircularProgressIndicator.adaptive()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.person_2_outlined),
                                fit: BoxFit.fill,
                                width: width,
                                height: 218,
                              ),
                            ),
                            const SizedBox(height: 94),
                            Center(
                              child: Text(
                                data.name,
                                style: theme.typography.h34w400,
                              ),
                            ),
                            Center(
                              child: Text(
                                data.status,
                                style: theme.typography.s10w400.copyWith(
                                  color: data.status == 'Dead'
                                      ? theme.colors.red
                                      : theme.colors.green,
                                ),
                              ),
                            ),
                            _CharacteristicBloc(data: data),
                          ],
                        ),
                        Positioned(
                          left: width / 2 - 73,
                          top: 145,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(200)),
                                color: theme.colors.white),
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl: data.image,
                                placeholder: (context, url) => const Center(
                                    child:
                                        CircularProgressIndicator.adaptive()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.person_2_outlined),
                                fit: BoxFit.cover,
                                width: 146,
                                height: 146,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 24,
                          top: 56,
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: const Icon(Icons.arrow_back_ios),
                          ),
                        )
                      ],
                    ),
                  ),
                  _EpisodeBloc(data: data)
                ],
              );
            },
            error: (error) => Center(child: Text(error)),
          );
        },
      ),
    );
  }
}

class _EpisodeBloc extends StatelessWidget {
  final CharactersDetailEntity data;
  const _EpisodeBloc({required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: data.episode.length,
      itemBuilder: (context, index) {
        return EpisodeCard(
            key: ValueKey(data.episode[index]),
            episodeUrl: data.episode[index]);
      },
    );
  }
}

class _CharacteristicBloc extends StatelessWidget {
  final CharactersDetailEntity data;
  const _CharacteristicBloc({required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _CharacteristicWidget(
                  title: 'Пол',
                  info: data.gender,
                ),
              ),
              Expanded(
                child: _CharacteristicWidget(
                  title: 'Пол',
                  info: data.gender,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _CharacteristicWidget(
            title: 'Место рождения',
            info: data.location.name,
          ),
          const SizedBox(height: 20),
          _CharacteristicWidget(
            title: 'Местоположение',
            info: data.location.name,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _CharacteristicWidget extends StatelessWidget {
  final String title;
  final String info;
  const _CharacteristicWidget({required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.typography.s12w400
              .copyWith(color: theme.colors.grey.withOpacity(0.7)),
        ),
        const SizedBox(height: 8),
        Text(
          info,
          style: theme.typography.s14w400,
        )
      ],
    );
  }
}
