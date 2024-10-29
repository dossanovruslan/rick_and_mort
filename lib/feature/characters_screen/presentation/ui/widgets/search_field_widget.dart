import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    this.onChanged,
    required this.hintText,
    this.controller,
    required this.onTap,
  });

  final ValueChanged<String>? onChanged;
  final String hintText;
  final TextEditingController? controller;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: theme.colors.grey.withOpacity(0.1),
        filled: true,
        hintText: hintText,
        hintStyle: theme.typography.s14w400
            .copyWith(color: theme.colors.textColor.withOpacity(0.5)),
        prefixIcon: Icon(
          Icons.search,
          color: theme.colors.grey,
          size: 30,
        ),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: theme.colors.grey.withOpacity(0.6)),
              ),
            ),
            child: Icon(
              Icons.filter_list_alt,
              size: 30,
              color: theme.colors.grey,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
