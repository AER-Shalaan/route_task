import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';
import 'package:route_task/presentation/home/tabs/home_tab/home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          body: HomeTab(),
        );
  }
}
