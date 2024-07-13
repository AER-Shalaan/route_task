import 'package:flutter/material.dart';
import 'package:route_task/presentation/home/home_screen.dart';
import 'core/utils/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route task',
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRouteName:(_) => const HomeScreen()
      },
      initialRoute: RoutesManager.homeRouteName,
    );
  }
}
