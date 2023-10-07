import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';

/// enum of chipSize
enum ChipSize {
  large,
  medium,
  small,
}
/// function to convert chip size into font size
double funcFontSizeConverter(ChipSize buttonSize) {
  switch (buttonSize) {
    case ChipSize.large:
      return StandardFontSize.h4;
    case ChipSize.medium:
      return StandardFontSize.h5;
    case ChipSize.small:
      return StandardFontSize.h6;
  }
}
/// function to convert chip size into icon close default size
double funcIconCloseConverter(ChipSize buttonSize) {
  switch (buttonSize) {
    case ChipSize.large:
      return 20;
    case ChipSize.medium:
      return 16;
    case ChipSize.small:
      return 12;
  }
}

class StandardChip {
  /// Component of Chip
  Widget chip(
      {required String title, /// change title
      EdgeInsets? margin, /// change margin
      ChipSize? chipSize, /// change chipSize
      double? borderRadius, /// change borderRadius
      double? elevation, /// change elevation
      bool isDisabled = false, /// change state isDisabled
      bool isUsingCloseIcon = false, /// change is using close icon
      Color? backgroundColor, /// change background color
      Color? disabledBackgroundColor, /// change disable background color
      Color? titleColor, /// change title color
      Color? disabledTitleColor, /// change disabled title color
      Color? splashColor, /// change splash color
      Color? borderColor, /// change border color
      Color? disabledBorderColor, /// change disabled title color
      Function()? onTap, /// call function onTap
      Function()? onTapClose, /// call function when close button tapped
      Widget? iconWidget, /// change icon widget
      Widget? iconCloseWidget /// change icon close widget
      }) {
    return Padding(
      padding: margin ?? const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: isDisabled
            ? disabledBackgroundColor ?? ColorTheme.grey700
            : backgroundColor ?? ColorTheme.primary700,
        elevation: elevation ?? 1,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: InkWell(
          splashColor:
              isDisabled ? Colors.transparent : splashColor ?? ColorTheme.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          onTap: isDisabled ? () {} : onTap,
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius ?? 12),
                  border: Border.all(
                      color: isDisabled
                          ? disabledBorderColor ?? ColorTheme.black
                          : borderColor ?? ColorTheme.primary500)),
              child: childChipWidget(
                icon: iconWidget,
                iconCloseWidget: isUsingCloseIcon
                    ? iconCloseWidget ??
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: GestureDetector(
                          onTap: onTapClose,
                          child: Icon(Icons.close,
                            color: isDisabled
                                ? ColorTheme.black
                                : ColorTheme.danger500,
                            size: funcIconCloseConverter(chipSize ?? ChipSize.medium),
                          ),
                        ),
                      )
                    : const SizedBox(),
                body: standardHeaderText(
                    fontSize:
                        funcFontSizeConverter(chipSize ?? ChipSize.medium),
                    text: title,
                    color: isDisabled
                        ? disabledTitleColor ?? ColorTheme.black
                        : titleColor ?? ColorTheme.black),
              )),
        ),
      ),
    );
  }

  Widget childChipWidget(
      {required Widget body, required Widget iconCloseWidget, Widget? icon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon ?? const SizedBox(),
        body,
        iconCloseWidget,
      ],
    );
  }
}
