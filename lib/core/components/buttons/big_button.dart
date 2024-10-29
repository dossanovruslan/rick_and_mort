import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';

class BigButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool isActive;
  final Color? borderColor;
  final Color? bgColor;

  const BigButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isActive = true,
    this.borderColor,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor ?? theme.colors.primary),
            color:
                isActive ? bgColor ?? theme.colors.primary : theme.colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isActive ? theme.colors.white : theme.colors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
