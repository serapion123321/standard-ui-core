import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:standard_ui_core/presentation/core/label_position.dart';
import 'package:standard_ui_core/presentation/utility/utility.dart';

class StandardForm {
  Widget basic({
    final EdgeInsetsGeometry? margin,
    final String? hintText,
    final TextEditingController? controller,
    final String? initialValue,
    final String? labelText,
    final bool obscureText = false,
    final bool enabled = true,
    final bool autofocus = false,
    final bool readOnly = false,
    final LabelPosition labelPosition = LabelPosition.left,
    final int? maxLines = 1,
    final Widget? prefixIcon,
    final Widget? suffixIcon,
    final TextCapitalization textCapitalization = TextCapitalization.none,
    final TextInputType? keyboardType,
    final List<TextInputFormatter>? inputFormatters,
    final Function()? onTap,
    final Function(String)? onChanged,
    final Function(String)? onFieldSubmitted,
    final String? Function(String?)? validator,
    final TextStyle? hintStyle,
    final Color? labelColor,
    final Color? disableLabelColor,
    final Color? textColor,
    final Color? disableTextColor,
    final Color? focusedColor,
    final Color? borderColor,
    final Color? errorColor,
    final Color? disabledColor,
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
