import 'package:flutter/material.dart';

class KeyPadButtonConfig {
  const KeyPadButtonConfig({
    double? size,
    double? fontSize,
    double? actionFontSize,
    this.textStyle,
    this.backgroundColor,
    this.buttonStyle,
  })  : size = size ?? 68,
        fontSize = fontSize ?? 36;

  /// Button width and height.
  final double size;

  /// Button font size.
  final double fontSize;

  final TextStyle? textStyle;

  

  /// Button background color.
  final Color? backgroundColor;

  /// Base [ButtonStyle] that is overridden by other specified values.
  final ButtonStyle? buttonStyle;

  /// Returns this config as a [ButtonStyle].
  ButtonStyle toButtonStyle() {
    ButtonStyle composed = OutlinedButton.styleFrom(
      textStyle: textStyle,
      backgroundColor: backgroundColor,
      foregroundColor: textStyle?.color
    );
    if (buttonStyle != null) {
      return buttonStyle!.copyWith(
        textStyle: composed.textStyle,
        backgroundColor: composed.backgroundColor,
        foregroundColor: composed.foregroundColor,
      );
    } else {
      return composed;
    }
  }

  /// Copies a [KeyPadButtonConfig] with new values.
  KeyPadButtonConfig copyWith({
    double? size,
    double? fontSize,
    Color? foregroundColor,
    Color? backgroundColor,
    ButtonStyle? buttonStyle,
    TextStyle? textStyle,
  }) {
    return KeyPadButtonConfig(
      textStyle: textStyle ?? this.textStyle,
      size: size ?? this.size,
      fontSize: fontSize ?? this.fontSize,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonStyle: buttonStyle ?? this.buttonStyle,
    );
  }
}
