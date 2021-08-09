import 'package:flutter/material.dart';
import 'package:opensphereweb/locator.dart';
import 'package:opensphereweb/routing/route_names.dart';
import 'package:opensphereweb/routing/router.dart';
import 'package:opensphereweb/services/navigation_service.dart';
import 'package:opensphereweb/views/home/home_view.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'app_theme.dart';

void main() {
  setupLocator();
  runApp(
    ChangeNotifierProvider<AppState>(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'OpenSphere Software Web',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: HomeView(),
          navigatorKey: locator<NavigationService>().navigatorKey,
          onGenerateRoute: generateRoute,
          initialRoute: HomeRoute,
        );
      },
    );
  }
}
