import 'package:flutter/material.dart';

import 'package:wayline_app/ui/core/themes/app_theme.dart';

class WaylineApp extends StatelessWidget {
  

  const WaylineApp({super.key});

   @override
   State<WaylineApp> createState() => _WaylineAppState();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: child,
    );
  }
