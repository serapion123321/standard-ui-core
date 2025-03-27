import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:standard_ui_core/presentation/core/label_position.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';

class StandardForm {
  /// Componenent of basic form
  Widget basic({
    final EdgeInsetsGeometry? margin, /// change margin
    final String? hintText, /// change hint text
    final TextEditingController? controller, /// set controller
    final String? initialValue, /// change initial value
    final String? labelText, /// change label text
    final bool obscureText = false, /// change state obscure text
    final bool enabled = true, /// change state enabled
    final bool autofocus = false, /// change state auto focus
    final bool readOnly = false, /// change state read only
    final LabelPosition labelPosition = LabelPosition.left, /// change label position
    final int? maxLines = 1, /// change max lines
    final Widget? prefixIcon, /// change prefix icon
    final Widget? suffixIcon, /// change suffix icon
    final TextCapitalization textCapitalization = TextCapitalization.none, /// change text capitalization
    final TextInputType? keyboardType, /// change keyboard type
    final List<TextInputFormatter>? inputFormatters, /// change text input formatters
    final Function()? onTap, /// call function on tap
    final Function(String)? onChanged, /// call function when change value
    final Function(String)? onFieldSubmitted, /// call function when on field submitted
    final String? Function(String?)? validator, /// change validator
    final TextStyle? hintStyle, /// change hint style
    final Color? labelColor, /// change label color
    final Color? disableLabelColor, /// change disable label color
    final Color? textColor, /// change text color
    final Color? disableTextColor, /// change disable text color
    final Color? focusedColor, /// change focus color
    final Color? borderColor, /// change border color
    final Color? errorColor, /// change error color
    final Color? disabledColor, /// change disable color
    final int? errorMaxLines, /// change error max lines
    final TextStyle? errorStyle /// change error style
  }) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: labelPosition == LabelPosition.left
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          labelText != null
              ? Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  child: standardBodyText(
                      text: labelText,
                      color: enabled == true
                          ? labelColor ?? ColorTheme.black
                          : disableLabelColor ?? ColorTheme.grey700,
                      fontSize: StandardFontSize.bodyTextM
                  ),
                )
              : const SizedBox(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              controller: controller,
              initialValue: initialValue,
              style: TextStyle(
                  color: enabled == true
                      ? textColor ?? ColorTheme.black
                      : disableTextColor ?? ColorTheme.grey700),
              cursorColor: ColorTheme.grey300,
              enabled: enabled,
              obscureText: obscureText,
              textCapitalization: textCapitalization,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autofocus: autofocus,
              readOnly: readOnly,
              maxLines: maxLines,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                errorStyle: errorStyle ?? TextStyle(
                  color: ColorTheme.danger500,
                  fontSize: StandardFontSize.bodyTextS
                ),
                errorMaxLines: errorMaxLines ?? 2,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: focusedColor ?? ColorTheme.primary500)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: errorColor ?? ColorTheme.danger500)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: disabledColor ?? ColorTheme.grey500)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: borderColor ?? ColorTheme.black)),
                  hintStyle: hintStyle ??
                      BodyTextStyle.textStyle(
                          color: ColorTheme.grey700,
                          fontSize: StandardFontSize.bodyTextXs),
                  hintText: hintText,
                  enabled: enabled,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon),
              onChanged: onChanged,
              onFieldSubmitted: onFieldSubmitted,
              validator: validator,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
