import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/DI/di.dart';
import 'core/api/api_manager.dart';
import 'core/myBlocObserver.dart';
import 'myapp.dart';

void main() {
  ApiManager.init();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  runApp(const MyApp());
}

