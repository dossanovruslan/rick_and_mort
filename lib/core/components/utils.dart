import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String dateYMMMdFromString(String date) {
  final result = DateFormat.yMMMMd().format(DateTime.parse(date));
  return result;
}

Future navigateTo({
  required BuildContext context,
  bool rootNavigator = false,
  required Widget screen,
  bool fullScreenDialog = false,
}) async {
  final result = Navigator.of(
    context,
    rootNavigator: rootNavigator,
  ).push(
    MaterialPageRoute(
      fullscreenDialog: fullScreenDialog,
      builder: (context) => screen,
    ),
  );

  return result;
}
