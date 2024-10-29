import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final String? suffixText;
  final TextStyle? style;
  final void Function()? onTap;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool autofocus;
  final void Function(String)? onChanged;
  final int? maxLength;
  final Color? fillColor;
  final Color? hintColor;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final int? minLines;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final int? maxLines;
  final bool visibilityIcon;

  const TextFieldWidget({
    super.key,
    this.controller,
    this.labelText,
    this.keyboardType,
    this.textAlign,
    this.suffixText,
    this.inputFormatters,
    this.style,
    this.onTap,
    this.prefix,
    this.suffixIcon,
    this.readOnly = false,
    this.autofocus = false,
    this.onChanged,
    this.maxLength,
    this.prefixIcon,
    this.fillColor,
    this.enabled,
    this.focusNode,
    this.textInputAction,
    this.minLines,
    this.hintText,
    this.validator,
    this.hintColor,
    this.obscureText,
    this.maxLines,
    this.visibilityIcon = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final FocusNode _textFieldFocus = FocusNode();

  bool _obscureText = false;

  @override
  void initState() {
    _obscureText = widget.obscureText ?? false;
    if (widget.focusNode != null) {
      widget.focusNode!.addListener(() {
        setState(() {});
      });
    } else {
      _textFieldFocus.addListener(() {
        setState(() {});
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeProvider.of(context).themeMode;
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      inputFormatters: widget.inputFormatters,
      textAlign: widget.textAlign ?? TextAlign.start,
      autofocus: widget.autofocus,
      cursorColor: theme.colors.primary,
      minLines: widget.minLines ?? 1,
      maxLines: widget.maxLines ?? 10,
      obscureText: _obscureText,
      obscuringCharacter: '●',
      textInputAction: widget.textInputAction,
      enabled: widget.enabled,
      maxLength: widget.maxLength,
      onTap: widget.onTap,
      readOnly: widget.readOnly,
      focusNode: widget.focusNode ?? _textFieldFocus,
      onChanged: widget.onChanged,
      validator: widget.validator ??
          (value) {
            if (value!.isEmpty) {
              return 'Объязательное поле';
            } else {
              return null;
            }
          },
      style: widget.style ??
          TextStyle(
            fontSize: _obscureText ? 16 : 18,
            color: theme.colors.grey,
            fontWeight: FontWeight.w600,
          ),
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixText: widget.suffixText,
        suffixIcon: widget.suffixIcon != null && widget.visibilityIcon
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                  color: theme.colors.grey,
                ),
              )
            : widget.suffixIcon,
        prefix: widget.prefix,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        counterStyle: TextStyle(fontSize: 10, color: theme.colors.grey),
        helperMaxLines: 8,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: widget.hintColor ?? theme.colors.grey.withOpacity(0.7),
        ),
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: theme.colors.grey.withOpacity(0.7),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        disabledBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        errorBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        fillColor: theme.colors.grey.withOpacity(0.1),
        filled: true,
      ),
    );
  }
}
