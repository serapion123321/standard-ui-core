import 'package:flutter/material.dart';
import 'package:standard_ui_core/presentation/core/icon_position.dart';
import 'package:standard_ui_core/presentation/core/screen_size.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';

/// ButtonSize is a default of button size use in standardButton component
enum ButtonSize{
  fullWidth,
  large,
  medium,
  small,
}
/// function to change Button Size into a value following of device width
double funcButtonSizeConverter(ButtonSize buttonSize) {
  switch (buttonSize) {
    case ButtonSize.fullWidth:
      return screenSize.width;
    case ButtonSize.large:
      return screenSize.width * 0.75;
    case ButtonSize.medium:
      return screenSize.width * 0.50;
    case ButtonSize.small:
      return screenSize.width * 0.25;
  }
}
/// function to convert size of loading size when using in button
double funcLoadingSizeConverter(ButtonSize buttonSize) {
  /// Default loading indicator size will follow text size
  switch (buttonSize) {
    case ButtonSize.fullWidth:
      return StandardFontSize.h3;
    case ButtonSize.large:
      return StandardFontSize.h4;
    case ButtonSize.medium:
      return StandardFontSize.h5;
    case ButtonSize.small:
      return StandardFontSize.h6;
  }
}
/// function to change font size in button
/// careful when change standardHeaderFontSize its not make button size following size of text
double funcFontSizeConverter(ButtonSize buttonSize){
  switch (buttonSize) {
    case ButtonSize.fullWidth:
      return StandardFontSize.h3;
    case ButtonSize.large:
      return StandardFontSize.h4;
    case ButtonSize.medium:
      return StandardFontSize.h5;
    case ButtonSize.small:
      return StandardFontSize.h6;
  }
}
/// Component of Standard Button
class StandardButton {
  /// Component of Primary Button
  Widget primaryButton({
    required title, /// change title
    EdgeInsets? margin, /// change margin
    ButtonSize? buttonSize, /// change button size
    double? borderRadius, /// change border radius
    double? elevation, /// change elevation
    bool isLoading = false, /// change state isLoading
    bool isDisabled = false, /// change state isDisable
    Color? backgroundColor, /// change background Color
    Color? disabledBackgroundColor, /// change disable background color
    Color? titleColor, /// change title color
    Color? disabledTitleColor, /// change disable title color
    Color? splashColor, /// change splash color
    Color? disabledSplashColor, /// change disable splash color
    Color? borderColor, /// change border color
    Color? disabledBorderColor, /// change disable border color
    Color? loadingColor, /// change loading color
    Widget? loadingWidget, /// change loading widget
    Function()? onTap, /// call function using on tap
    IconPosition? iconPosition, /// change icon position
    Widget? iconWidget /// change icon widget
  }) {
    return Padding(
      padding : margin ?? const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: isDisabled
            ? disabledBackgroundColor ?? ColorTheme.grey700
            : backgroundColor ?? ColorTheme.primary700,
        elevation: elevation ?? 1,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: InkWell(
          splashColor: isDisabled ? Colors.transparent : splashColor ?? ColorTheme.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          onTap: isLoading || isDisabled ? (){} : onTap,
          child: Container(
            alignment: Alignment.center,
            width: funcButtonSizeConverter(buttonSize ?? ButtonSize.fullWidth),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 12),
              border: Border.all(
                  color: isDisabled
                      ? disabledBorderColor ?? ColorTheme.black
                      : borderColor ?? ColorTheme.primary500
              )
            ),
            child: isLoading ? loadingChildContainer(
              loadingWidget: loadingWidget ?? SizedBox(
                height: funcLoadingSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                width: funcLoadingSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                child:  CircularProgressIndicator(
                  color: loadingColor ?? titleColor ?? ColorTheme.black,
                ),
              )
            ) : childContainerWidget(
              iconPosition: iconPosition ?? IconPosition.left,
              body: standardHeaderText(
                  fontSize: funcFontSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                  text: title,
                  color: isDisabled
                      ? disabledTitleColor ?? ColorTheme.black
                      : titleColor ?? ColorTheme.black
              ),
              icon: iconWidget
            )
          ),
        ),
      ),
    );
  }
  /// Component of Secondary Button
  Widget secondaryButton({
    required title, /// change title
    EdgeInsets? margin, /// change margin
    ButtonSize? buttonSize, /// change button size
    double? borderRadius, /// change border radius
    double? elevation, /// change elevation
    bool isLoading = false, /// change state isLoading
    bool isDisabled = false, /// change state isDisabled
    Color? backgroundColor, /// change background color
    Color? disabledBackgroundColor, /// change disable background color
    Color? titleColor, /// change title color
    Color? disabledTitleColor, /// change disable title color
    Color? splashColor, /// change splash color
    Color? disabledSplashColor, /// change disable splash color
    Color? borderColor, /// change border color
    Color? disabledBorderColor, /// change disable border color
    Color? loadingColor, /// change loading color
    Widget? loadingWidget, /// change loading widget
    Function()? onTap, /// call function using onTap
    IconPosition? iconPosition, /// change icon position
    Widget? iconWidget /// change icon widget
  }) {
    return Padding(
      padding : margin ?? const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: isDisabled
            ? disabledBackgroundColor ?? ColorTheme.grey700
            : backgroundColor ?? ColorTheme.white,
        elevation: elevation ?? 1,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: InkWell(
          splashColor: isDisabled ? Colors.transparent : splashColor ?? ColorTheme.primary500,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          onTap: isLoading || isDisabled ? (){} : onTap,
          child: Container(
              alignment: Alignment.center,
              width: funcButtonSizeConverter(buttonSize ?? ButtonSize.fullWidth),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius ?? 12),
                  border: Border.all(
                      color: isDisabled
                          ? disabledBorderColor ?? ColorTheme.black
                          : borderColor ?? ColorTheme.primary500
                  )
              ),
              child: isLoading ? loadingChildContainer(
                  loadingWidget: loadingWidget ?? SizedBox(
                    height: funcLoadingSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                    width: funcLoadingSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                    child:  CircularProgressIndicator(
                      color: loadingColor ?? titleColor ?? ColorTheme.black,
                    ),
                  )
              ) : childContainerWidget(
                  iconPosition: iconPosition ?? IconPosition.left,
                  body: standardHeaderText(
                      fontSize: funcFontSizeConverter(buttonSize ?? ButtonSize.fullWidth),
                      text: title,
                      color: isDisabled
                          ? disabledTitleColor ?? ColorTheme.black
                          : titleColor ?? ColorTheme.black
                  ),
                  icon: iconWidget
              )
          ),
        ),
      ),
    );
  }
  /// Component of Tertiary Button
  Widget tertiaryButton({
    required title, /// change title
    EdgeInsets? margin, /// change margin
    bool isLoading = false, /// change state isLoading
    bool isDisabled = false, /// change state isDisable
    Color? titleColor, /// change title color
    Color? disabledTitleColor, /// change disable title color
    Function()? onTap, /// call function using onTap
  }) {
    return Padding(
      padding : margin ?? const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: isLoading || isDisabled ? (){} : onTap,
        child: standardHeaderText(
            fontSize: StandardFontSize.h6,
            text: title,
            color: isDisabled || isLoading
                ? disabledTitleColor ?? ColorTheme.grey700
                : titleColor ?? ColorTheme.black
        ),
      ),
    );
  }

  Widget childContainerWidget({
  required IconPosition iconPosition,
  required Widget body,
  Widget? icon
  }) {
    if(icon == null){
      return body;
    } else {
      if(iconPosition == IconPosition.left){
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
  }

  Widget loadingChildContainer({
  required Widget loadingWidget,
  }){
    return loadingWidget;
  }
}
