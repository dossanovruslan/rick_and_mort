import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:rick_and_morty/feature/home_screen/view_model/home_screen_vm.dart';

class DependenciesProvider extends StatelessWidget {
  final Widget child;

  const DependenciesProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenViewModel()),
      ],
      child: child,
    );
  }
}
