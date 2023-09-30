import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/core/icon_position.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';


class StandardFab {
  FloatingActionButton fab({
    Widget? iconWidget,
    String? title,
    bool isDisabled = false,
    bool isLoading = false,
    Function()? onTap,
    Color? backgroundColor,
    Color? disabledBackgroundColor,
    Color? titleColor,
    Color? disabledTitleColor,
    Color? loadingColor,
    double? elevation,
    IconPosition? iconPosition,
  }) {
    if (title == null) {
      /// title is null then use circle fab
      return FloatingActionButton(
        onPressed: isLoading || isDisabled ? () {} : onTap,
        backgroundColor: isDisabled
            ? disabledBackgroundColor ?? ColorTheme.grey700
            : backgroundColor ?? ColorTheme.primary700,
        elevation: elevation ?? 1,
        child: isLoading
            ? loadingFabWidet(
                loadingWidget: CircularProgressIndicator(
                  color: loadingColor ?? titleColor ?? ColorTheme.black,
                ),
              )
            : childFabWidget(
                iconPosition: iconPosition ?? IconPosition.left,
                body: title != null
                    ? standardHeaderText(
                        fontSize: StandardFontSize.h6,
                        text: title,
                        color: isDisabled
                            ? disabledTitleColor ?? ColorTheme.black
                            : titleColor ?? ColorTheme.black)
                    : const SizedBox(),
                icon: iconWidget ?? const SizedBox()),
      );
    } else {
      /// title is not null then use extended fab
      return FloatingActionButton.extended(
          onPressed: isLoading || isDisabled ? () {} : onTap,
          backgroundColor: isDisabled
              ? disabledBackgroundColor ?? ColorTheme.grey700
              : backgroundColor ?? ColorTheme.primary700,
          elevation: elevation ?? 1,
          label: isLoading
              ? loadingFabWidet(
                  loadingWidget: CircularProgressIndicator(
                    color: loadingColor ?? titleColor ?? ColorTheme.black,
                  ),
                )
              : childFabWidget(
                  iconPosition: iconPosition ?? IconPosition.left,
                  body:standardHeaderText(
                      fontSize: StandardFontSize.h6,
                      text: title,
                      color: isDisabled
                          ? disabledTitleColor ?? ColorTheme.black
                          : titleColor ?? ColorTheme.black),
                  icon: iconWidget ?? const SizedBox()));
    }
  }

  Widget childFabWidget(
      {required IconPosition iconPosition,
      required Widget body,
      required Widget icon}) {
    if (iconPosition == IconPosition.left) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          body,
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          body,
          icon,
        ],
      );
    }
  }

  Widget loadingFabWidet({
    required Widget loadingWidget,
  }) {
    return loadingWidget;
  }
}
