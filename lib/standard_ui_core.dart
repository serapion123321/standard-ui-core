library standard_ui_core;
import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/core/screen_size.dart';
import 'package:standard_ui_core/presentation/utility/color.dart';
import 'package:standard_ui_core/presentation/utility/typography.dart';

class InitialValue{
  /// static screenSize for change value of screenSize device, can use be overwrite with getX or MediaQuery
  /// please use that on first initialize app
  static setScreenSize({
    Size? screenSizeCustom
  }){
    screenSize = screenSizeCustom ?? WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
  }
  /// static setBodyFontSize use to change default value of BodyFontSize, follow your own design system
  /// can use in first initialize app
  static setBodyFontSize({
    double? bodyTextXxl,
    double? bodyTextXl,
    double? bodyTextL,
    double? bodyTextM,
    double? bodyTextS,
    double? bodyTextXs,
    double? bodyTextXxs,
  }){
    StandardFontSize.bodyTextXxl = bodyTextXxl ?? 28;
    StandardFontSize.bodyTextXl = bodyTextXl ?? 24;
    StandardFontSize.bodyTextL = bodyTextL ?? 20;
    StandardFontSize.bodyTextM = bodyTextM ?? 16;
    StandardFontSize.bodyTextS = bodyTextS ?? 12;
    StandardFontSize.bodyTextXs = bodyTextXs ?? 10;
    StandardFontSize.bodyTextXxs = bodyTextXxs ?? 8;
  }
  /// static setHeaderFontSize use to change default value of HeaderFontSize, follow your own design system
  /// can use in first initialize app
  static setHeaderFontSize({
    double? h1,
    double? h2,
    double? h3,
    double? h4,
    double? h5,
    double? h6,
  }){
    StandardFontSize.h1 = h1 ?? 32;
    StandardFontSize.h2 = h2 ?? 28;
    StandardFontSize.h3 = h3 ?? 24;
    StandardFontSize.h4 = h4 ?? 20;
    StandardFontSize.h5 = h5 ?? 16;
    StandardFontSize.h6 = h6 ?? 12;
  }
  /// static setPrimaryColor use to change default value of PrimaryColor, follow your own design system
  /// can use in first initialize app
  static setPrimaryColor({
    Color? primary100,
    Color? primary200,
    Color? primary300,
    Color? primary400,
    Color? primary500,
    Color? primary600,
    Color? primary700,
    Color? primary800,
    Color? primary900,
  }){
    ColorTheme.primary100 =  primary100 ?? const Color(0xffe4effe);
    ColorTheme.primary200 =  primary200 ?? const Color(0xffadcefc);
    ColorTheme.primary300 =  primary300 ?? const Color(0xff76aefa);
    ColorTheme.primary400 =  primary400 ?? const Color(0xff408ef8);
    ColorTheme.primary500 =  primary500 ?? const Color(0xff096df6);
    ColorTheme.primary600 =  primary600 ?? const Color(0xff0755bf);
    ColorTheme.primary700 =  primary700 ?? const Color(0xff053d89);
    ColorTheme.primary800 =  primary800 ?? const Color(0xff032452);
    ColorTheme.primary900 =  primary900 ?? const Color(0xff010c1b);
  }
  /// static setSecondaryColor use to change default value of SecondaryColor, follow your own design system
  /// can use in first initialize app
  static setSecondaryColor({
    Color? secondary100,
    Color? secondary200,
    Color? secondary300,
    Color? secondary400,
    Color? secondary500,
    Color? secondary600,
    Color? secondary700,
    Color? secondary800,
    Color? secondary900,
  }){
    ColorTheme.secondary100 =  secondary100 ?? const Color(0xfffbefe6);
    ColorTheme.secondary200 =  secondary200 ?? const Color(0xfff4cfb5);
    ColorTheme.secondary300 =  secondary300 ?? const Color(0xffedae84);
    ColorTheme.secondary400 =  secondary400 ?? const Color(0xffe58e52);
    ColorTheme.secondary500 =  secondary500 ?? const Color(0xffde6e21);
    ColorTheme.secondary600 =  secondary600 ?? const Color(0xffad551a);
    ColorTheme.secondary700 =  secondary700 ?? const Color(0xff7b3d12);
    ColorTheme.secondary800 =  secondary800 ?? const Color(0xff4a250b);
    ColorTheme.secondary900 =  secondary900 ?? const Color(0xff190c04);
  }
  /// static setSuccessColor use to change default value of SuccessColor, follow your own design system
  /// can use in first initialize app
  static setSuccessColor({
    Color? success100,
    Color? success200,
    Color? success300,
    Color? success400,
    Color? success500,
    Color? success600,
    Color? success700,
    Color? success800,
    Color? success900,
  }){
    ColorTheme.success100 =  success100 ?? const Color(0xffecfee3);
    ColorTheme.success200 =  success200 ?? const Color(0xffc5fdac);
    ColorTheme.success300 =  success300 ?? const Color(0xff9efc74);
    ColorTheme.success400 =  success400 ?? const Color(0xff78fb3c);
    ColorTheme.success500 =  success500 ?? const Color(0xff51fa05);
    ColorTheme.success600 =  success600 ?? const Color(0xff3fc204);
    ColorTheme.success700 =  success700 ?? const Color(0xff2d8b03);
    ColorTheme.success800 =  success800 ?? const Color(0xff1b5302);
    ColorTheme.success900 =  success900 ?? const Color(0xff091c01);
  }
  /// static setDangerColor use to change default value of DangerColor, follow your own design system
  /// can use in first initialize app
  static setDangerColor({
    Color? danger100,
    Color? danger200,
    Color? danger300,
    Color? danger400,
    Color? danger500,
    Color? danger600,
    Color? danger700,
    Color? danger800,
    Color? danger900,
  }){
    ColorTheme.danger100 =  danger100 ?? const Color(0xfffce5ea);
    ColorTheme.danger200 =  danger200 ?? const Color(0xfff7b2bf);
    ColorTheme.danger300 =  danger300 ?? const Color(0xfff27e95);
    ColorTheme.danger400 =  danger400 ?? const Color(0xffed4b6b);
    ColorTheme.danger500 =  danger500 ?? const Color(0xffe81740);
    ColorTheme.danger600 =  danger600 ?? const Color(0xffb41232);
    ColorTheme.danger700 =  danger700 ?? const Color(0xff810d24);
    ColorTheme.danger800 =  danger800 ?? const Color(0xff4d0815);
    ColorTheme.danger900 =  danger900 ?? const Color(0xff1a0307);
  }
  /// static setGreyColor use to change default value of GreyColor, follow your own design system
  /// can use in first initialize app
  static setGreyColor({
    Color? grey100,
    Color? grey200,
    Color? grey300,
    Color? grey400,
    Color? grey500,
    Color? grey600,
    Color? grey700,
    Color? grey800,
    Color? grey900,
  }){
    ColorTheme.grey100 =  grey100 ?? const Color(0xfff1f1f1);
    ColorTheme.grey200 =  grey200 ?? const Color(0xffd4d4d4);
    ColorTheme.grey300 =  grey300 ?? const Color(0xffb8b8b8);
    ColorTheme.grey400 =  grey400 ?? const Color(0xff9c9c9c);
    ColorTheme.grey500 =  grey500 ?? const Color(0xff808080);
    ColorTheme.grey600 =  grey600 ?? const Color(0xff636363);
    ColorTheme.grey700 =  grey700 ?? const Color(0xff474747);
    ColorTheme.grey800 =  grey800 ?? const Color(0xff2a2a2a);
    ColorTheme.grey900 =  grey900 ?? const Color(0xff0e0e0e);
  }
  /// static setBlueGreyColor use to change default value of BlueGreyColor, follow your own design system
  /// can use in first initialize app
  static setBlueGreyColor({
    Color? bluegrey100,
    Color? bluegrey200,
    Color? bluegrey300,
    Color? bluegrey400,
    Color? bluegrey500,
    Color? bluegrey600,
    Color? bluegrey700,
    Color? bluegrey800,
    Color? bluegrey900,
  }){
    ColorTheme.bluegrey100 =  bluegrey100 ?? const Color(0xffedf0f4);
    ColorTheme.bluegrey200 =  bluegrey200 ?? const Color(0xffcad1df);
    ColorTheme.bluegrey300 =  bluegrey300 ?? const Color(0xffa6b2ca);
    ColorTheme.bluegrey400 =  bluegrey400 ?? const Color(0xff8393b5);
    ColorTheme.bluegrey500 =  bluegrey500 ?? const Color(0xff5f74a0);
    ColorTheme.bluegrey600 =  bluegrey600 ?? const Color(0xff4a5a7c);
    ColorTheme.bluegrey700 =  bluegrey700 ?? const Color(0xff354059);
    ColorTheme.bluegrey800 =  bluegrey800 ?? const Color(0xff202735);
    ColorTheme.bluegrey900 =  bluegrey900 ?? const Color(0xff0b0d12);
  }
}
