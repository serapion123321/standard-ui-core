import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/core/icon_position.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';


class StandardFab {
  /// Component of Floating Action Button
  FloatingActionButton fab({
    Widget? iconWidget, /// change icon widget
    String? title, /// change title
    bool isDisabled = false, /// change state isDisabled
    bool isLoading = false, /// change state isLoading
    Function()? onTap, /// call function on Tap
    Color? backgroundColor, /// change background color
    Color? disabledBackgroundColor, /// change disabled background color
    Color? titleColor, /// change title color
    Color? disabledTitleColor, /// change disabled title color
    Color? loadingColor, /// change loading color
    double? elevation, /// change elevation
    IconPosition? iconPosition, /// change icon position
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
