import 'package:flutter/material.dart';

extension ThemeDataExtension on BuildContext {
  get themeData {
    return ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                minimumSize: const Size.fromHeight(46),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                disabledBackgroundColor: Colors.grey,
                disabledForegroundColor: Colors.white,
                shadowColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory)));
  }
}
