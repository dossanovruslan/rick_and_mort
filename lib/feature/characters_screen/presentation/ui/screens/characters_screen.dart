import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty/core/components/utils.dart';
import 'package:rick_and_morty/feature/characters_screen/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/state/bloc/characters_screen_bloc.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/screens/filter_screen.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/characters_card.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/characters_grid_card.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/loading_placeholder.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/widgets/search_field_widget.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late TextEditingController controller;

  bool listType = true;

  String? gender;
  String? status;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchFieldWidget(
          controller: controller,
          onChanged: (value) {
            context
                .read<CharactersScreenBloc>()
                .add(GetCharactersEvent(page: 1, query: value));
          },
          onTap: () async {
            final result = await navigateTo(
              context: context,
              screen: BlocProvider.value(
                value: context.read<CharactersScreenBloc>(),
                child: FilterScreen(
                  gender: gender,
                  status: status,
                ),
              ),
            );

            gender = result.gender;
            status = result.status;
            setState(() {});
          },
          hintText: 'Найти персонажа',
        ),
      ),
      body: BlocBuilder<CharactersScreenBloc, CharactersScreenState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const SizedBox.shrink();
            },
            loading: () => LoadingPlaceholder(listType: listType),
            loaded: (data, count, isLoading) {
              return data.isNotEmpty
                  ? NotificationListener(
                      onNotification: (notification) {
                        if (notification is ScrollNotification) {
                          if (notification.metrics.pixels ==
                              notification.metrics.maxScrollExtent) {
                            context
                                .read<CharactersScreenBloc>()
                                .add(const GetNextPageEvent());
                          }
                        }
                        return false;
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text('Всего персонажей: $count'),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      listType = !listType;
                                    });
                                  },
                                  child: SvgPicture.asset(listType
                                      ? 'assets/svg_icons/list_icon.svg'
                                      : 'assets/svg_icons/group_icon.svg'),
                                ),
                                const SizedBox(width: 12)
                              ],
                            ),
                            const SizedBox(height: 12),
                            listType
                                ? _CharactersListWidget(list: data)
                                : _CharactersGridWidget(list: data),
                            if (isLoading)
                              const CircularProgressIndicator.adaptive()
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 48),
                          Image.asset('assets/images/rick.png'),
                          const SizedBox(height: 24),
                          const Text('Персонаж с таким именем не найден')
                        ],
                      ),
                    );
            },
            error: (e) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Упс, что-то пошло не так!'),
                    const SizedBox(height: 12),
                    Text(e),
                    TextButton(
                        onPressed: () {
                          controller.clear();
                          context.read<CharactersScreenBloc>().add(
                              const GetCharactersEvent(page: 1, query: ''));
                        },
                        child: Text('Поробовать снова'))
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _CharactersGridWidget extends StatelessWidget {
  final List<CharactersDataEntity> list;
  const _CharactersGridWidget({required this.list});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 30, crossAxisCount: 2, childAspectRatio: 0.8),
        itemCount: list.length,
        itemBuilder: (context, index) => CharactersGridCard(
          data: list[index],
        ),
      ),
    );
  }
}

class _CharactersListWidget extends StatelessWidget {
  final List<CharactersDataEntity> list;
  const _CharactersListWidget({required this.list});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return CharactersCard(
            data: list[index],
          );
        },
      ),
    );
  }
}
