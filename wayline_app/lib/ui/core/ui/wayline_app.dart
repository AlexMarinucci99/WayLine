import 'package:flutter/material.dart';

import 'package:wayline_app/ui/core/themes/app_theme.dart';
import 'package:wayline_app/config/app_config.dart';

class WaylineApp extends StatelessWidget {
  const WaylineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.system,
      home: const _TemporaryHomeScreen(),
    );
  }
}

class _TemporaryHomeScreen extends StatelessWidget {
  const _TemporaryHomeScreen();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Text(
          AppConfig.appName,
          style: theme.textTheme.headlineMedium,
        ),
      ),
    );
  }
}



