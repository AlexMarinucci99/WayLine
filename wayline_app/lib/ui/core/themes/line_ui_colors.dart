import 'package:flutter/material.dart';
import 'package:wayline_app/ui/core/themes/app_theme.dart';

class LineUiColors {
    const LineUiColors._();

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Color surfaceColor(BuildContext context) =>
      isDark(context) ? AppTheme.darkSurface : Colors.white;

  static Color surfaceSoftColor(
    BuildContext context, {
    required Color lightColor,
  }) => isDark(context) ? AppTheme.darkSurfaceSoft : lightColor;

  static Color dividerColor(
    BuildContext context, {
    required Color lightColor,
  }) => isDark(context) ? AppTheme.darkBorder : lightColor;

  static Color borderColor(BuildContext context, {required Color lightColor}) =>
      isDark(context) ? AppTheme.darkBorderStrong : lightColor;

  static Color primaryTextColor(BuildContext context) =>
      isDark(context) ? AppTheme.darkTextPrimary : AppTheme.textPrimary;

  static Color secondaryTextColor(BuildContext context) =>
      isDark(context) ? AppTheme.darkTextSecondary : AppTheme.textSecondary;

  static Color tertiaryTextColor(BuildContext context) =>
      isDark(context) ? AppTheme.darkTextTertiary : AppTheme.textTertiary;

  static Color cardShadowColor(
    BuildContext context, {
    required double darkAlpha,
    required double lightAlpha,
  }) => isDark(context)
      ? Colors.black.withValues(alpha: darkAlpha)
      : AppTheme.navy.withValues(alpha: lightAlpha);

  static Color lineTextColor(Color backgroundColor) {
    return backgroundColor.computeLuminance() > 0.58
        ? AppTheme.textPrimary
        : Colors.white;
  }
}
  