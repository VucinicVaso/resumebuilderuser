import 'package:flutter/material.dart';
import '../../external/lib_getx.dart';
import '../wt_theme.dart';
import '../wt_theme_service.dart';
import 'wt_theme_dark.dart';
import 'wt_theme_light.dart';

class WTThemeServiceImpl extends WTThemeService {

  WTThemeServiceImpl() {
    setLightTheme(WTThemeLight());
    setDarkTheme(WTThemeDark());
    useLightTheme();
  }

  @override
  void setLightTheme(WTTheme? wtTheme) {
    lightTheme = wtTheme;
  }
  @override
  void useLightTheme() {
    setTheme(wtType: WTThemeEnums.light, wtTheme: lightTheme!);
  }

  @override
  void setDarkTheme(WTTheme? wtTheme) {
    darkTheme = wtTheme;
  }
  @override
  void useDarkTheme() {
    setTheme(wtType: WTThemeEnums.dark, wtTheme: darkTheme!);
  }

  @override
  void setTheme({ WTThemeEnums? wtType, WTTheme? wtTheme }) {
    theme = wtTheme;
    themeExtension = theme!.getTheme()!;

    if(wtType!.name == WTThemeEnums.light.name) {
      themeData = ThemeData
        .light()
        .copyWith(
          extensions: <ThemeExtension<dynamic>>[ themeExtension! ]
        );
      Get.changeTheme(themeData!);
      Get.changeThemeMode(ThemeMode.light);
    }

    if(wtType.name == WTThemeEnums.dark.name) {
      themeData = ThemeData
        .dark()
        .copyWith(
          extensions: <ThemeExtension<dynamic>>[ themeExtension! ]
        );
      Get.changeTheme(themeData!);
      Get.changeThemeMode(ThemeMode.dark);
    }
  }

}