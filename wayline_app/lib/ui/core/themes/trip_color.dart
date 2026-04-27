import 'package:flutter/material.dart';

Color resolveTripColor({
  required String? routeShortName,
  required String? routeColor,
  required Color fallback,
}) {
  final parsed = _parseHex(routeColor);
  if (parsed != null) {
    return parsed;
  }
  
   const palette = <Color>[
    Color(0xFF0F5E8C),
    Color(0xFFC26B2C),
    Color(0xFF1D7A5F),
    Color(0xFFB33C5A),
    Color(0xFF5E4DB2),
    Color(0xFFAA4F12),
  ];

  final value = routeShortName ?? '';
  if (value.isEmpty) {
    return fallback;
  }
  final index =
      value.codeUnits.fold<int>(0, (sum, unit) => sum + unit) % palette.length;
  return palette[index];
}
  Color? _parseHex(String? value) {
  final cleaned = value?.trim() ?? '';
  if (cleaned.isEmpty) {
    return null;
  }

  final normalized = cleaned.startsWith('#') ? cleaned.substring(1) : cleaned;
  if (normalized.length != 6 && normalized.length != 8) {
    return null;
  }

  final buffer = StringBuffer();
  if (normalized.length == 6) {
    buffer.write('FF');
  }
  buffer.write(normalized);
  return Color(int.parse(buffer.toString(), radix: 16));
}


  

