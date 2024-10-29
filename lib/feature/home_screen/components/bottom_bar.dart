import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:provider/provider.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:rick_and_morty/feature/home_screen/view_model/home_screen_vm.dart';

class MainAppBottomBar extends StatelessWidget {
  const MainAppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(6),
      child: const Row(
        children: [
          Expanded(
            child: _NavBarItem(
              iconUrl: 'assets/svg_icons/characters.svg',
              title: 'Персонажи',
              index: 0,
            ),
          ),
          Expanded(
            child: _NavBarItem(
              iconUrl: 'assets/svg_icons/location_icon.svg',
              title: 'Локациии',
              index: 1,
            ),
          ),
          Expanded(
            child: _NavBarItem(
              iconUrl: 'assets/svg_icons/episode_icon.svg',
              title: 'Эпизоды',
              index: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    required this.iconUrl,
    required this.index,
    required this.title,
  });
  final String iconUrl;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    return GestureDetector(
      onTap: () {
        context.read<HomeScreenViewModel>().changeScreen(index);
      },
      child: Consumer<HomeScreenViewModel>(builder: (context, value, child) {
        bool isActive = value.activeIndex == index;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconUrl,
              colorFilter: ColorFilter.mode(
                isActive
                    ? theme.colors.primary
                    : theme.colors.grey.withOpacity(0.5),
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: isActive
                    ? theme.colors.primary
                    : theme.colors.grey.withOpacity(0.5),
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        );
      }),
    );
  }
}
