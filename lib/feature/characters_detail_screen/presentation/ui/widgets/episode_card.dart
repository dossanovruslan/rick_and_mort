import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/components/utils.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/data/models/episode_model.dart';
import 'package:rick_and_morty/feature/characters_detail_screen/domain/entity/episode_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/characters_card.dart';

class EpisodeCard extends StatefulWidget {
  final String episodeUrl;
  const EpisodeCard({super.key, required this.episodeUrl});

  @override
  State<EpisodeCard> createState() => _EpisodeCardState();
}

class _EpisodeCardState extends State<EpisodeCard>
    with AutomaticKeepAliveClientMixin {
  late final Future<EpisodeEntity> _future;
  final dio = Dio();

  @override
  void initState() {
    _future = getEpisode(widget.episodeUrl);
    super.initState();
  }

  Future<EpisodeEntity> getEpisode(String url) async {
    final result = await dio.get(url);
    return EpisodeModel.fromJson(result.data);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      key: ValueKey(widget.episodeUrl),
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CharactersCard.placeholder(),
          );
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Image.asset('assets/images/rectangle.png'),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(snapshot.data?.name ?? ''),
                    Text(dateYMMMdFromString(snapshot.data!.created)),
                    Text(snapshot.data?.name ?? '')
                  ],
                )
              ],
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
