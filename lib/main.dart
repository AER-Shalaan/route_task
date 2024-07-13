import 'package:flutter/material.dart';
import 'core/DI/di.dart';
import 'core/api/api_manager.dart';
import 'myapp.dart';

void main() {
  ApiManager.init();
  configureDependencies();
  runApp(const MyApp());
}

