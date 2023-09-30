import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';

enum ChipSize {
  large,
  medium,
  small,
}

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
  Widget chip(
      {required String title,
      EdgeInsets? margin,
      ChipSize? chipSize,
      double? borderRadius,
      double? elevation,
      bool isDisabled = false,
      bool isUsingCloseIcon = false,
      Color? backgroundColor,
      Color? disabledBackgroundColor,
      Color? titleColor,
      Color? disabledTitleColor,
      Color? splashColor,
      Color? borderColor,
      Color? disabledBorderColor,
      Function()? onTap,
      Function()? onTapClose,
      Widget? iconWidget,
      Widget? iconCloseWidget}) {
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
