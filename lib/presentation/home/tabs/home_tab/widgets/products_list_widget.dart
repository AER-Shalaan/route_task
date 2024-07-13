import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/presentation/home/tabs/home_tab/widgets/product_card.dart';

import '../viewmodel/home_tab_view_model.dart';


class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        BlocBuilder<HomeTabViewModel, HomeTabStates>(
          builder: (context, state) {
            if (state is HomeTabSuccessStates) {
              var products = state.products;
              return SliverPadding(
                padding: EdgeInsets.all(25.sp),
                sliver: SliverGrid.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(productEntity: products[index]),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    mainAxisExtent: 250.h,
                    crossAxisSpacing: 16.w,
                  ),
                ),
              );
            }
            if (state is HomeTabErrorStates) {
              return const SliverToBoxAdapter(
                child: Text("No products found"),
              );
            }
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
        ),
      ],
    );
  }
}
