import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/ui/feature.dart';
import 'package:rick_and_morty/feature/home_screen/components/bottom_bar.dart';
import 'package:rick_and_morty/feature/home_screen/components/fade_indexed_stack.dart';
import 'package:rick_and_morty/feature/home_screen/view_model/home_screen_vm.dart';

final homeScreenKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScreenKey,
      body: const _Body(),
      bottomNavigationBar: const MainAppBottomBar(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenViewModel>(
      builder: (context, value, child) => Stack(
        children: [
          FadeIndexedStack(
            index: value.activeIndex,
            children: <Widget>[
              Navigator(
                key: value.navigatorKeys[0],
                onGenerateRoute: (route) => charactersScreenRoute(route),
              ),
              Navigator(
                key: value.navigatorKeys[1],
                onGenerateRoute: (route) => charactersScreenRoute(route),
              ),
              Navigator(
                key: value.navigatorKeys[2],
                onGenerateRoute: (route) => charactersScreenRoute(route),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
