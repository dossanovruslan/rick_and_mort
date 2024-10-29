import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlaceholder extends StatelessWidget {
  final Widget child;
  final bool isEnabled;

  const ShimmerPlaceholder({
    super.key,
    required this.child,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    Color baseColor = theme.colors.grey.withOpacity(0.15);
    Color highlightColor = theme.colors.white;

    return isEnabled
        ? Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: highlightColor,
            enabled: true,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: child,
            ),
          )
        : child;
  }
}
