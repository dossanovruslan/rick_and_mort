import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/di/injections.dart';
import 'package:rick_and_morty/core/theme/app_theme_data.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:rick_and_morty/feature/auth_screen/presentation/ui/feature.dart';
import 'package:rick_and_morty/feature/init/dependencies_providers/dependensies_povider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const DependenciesProvider(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppThemeProvider(
      themeMode: AppThemeMode.light,
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey,
          ),
          useMaterial3: false,
        ),
        home: const AuthScreenFeature(),

        // const HomeScreen(),
      ),
    );
  }
}
