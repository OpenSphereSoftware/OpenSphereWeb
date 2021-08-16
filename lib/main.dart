import 'package:flutter/material.dart';
import 'package:opensphereweb/application/navigation/navigation_service.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/presentation/routing/route_names.dart';
import 'package:opensphereweb/presentation/routing/router.dart';
import 'package:opensphereweb/presentation/views/home/home_view.dart';
import 'package:provider/provider.dart';

import 'application/theme/theme_service.dart';
import 'presentation/theme/theme.dart';

void main() {
  setupLocator();
  runApp(
    ChangeNotifierProvider<ThemeService>(
      create: (context) => ThemeService(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, appState, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'OpenSphere Software Web',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: const HomeView(),
          navigatorKey: locator<NavigationService>().navigatorKey,
          onGenerateRoute: generateRoute,
          initialRoute: HomeRoute,
        );
      },
    );
  }
}
