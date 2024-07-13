import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/presentation/home/tabs/home_tab/viewmodel/home_tab_view_model.dart';
import 'package:route_task/presentation/home/tabs/home_tab/widgets/products_list_widget.dart';
import '../../../../core/DI/di.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<HomeTabViewModel>()..getProducts(),
        child: const ProductsListWidget()
    );
  }
}
