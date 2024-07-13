import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_task/presentation/home/tabs/home_tab/home_tab.dart';
import 'package:route_task/presentation/home/tabs/home_tab/widgets/search_text_field.dart';
import '../../core/utils/assets_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AssetsManager.routeIcon,
              height: 26,
              width: 66,
            ),
            SizedBox(height: 19.h),
            Row(
              children: [
                SizedBox(
                  width: 340.w,
                  height: 55.h,
                  child:  const SearchTextField(),
                ),
                const Spacer(),
                IconButton(onPressed: (){},
                    icon: SvgPicture.asset(AssetsManager.shoppingCartIcon,
                        height: 24,
                        width: 24)
                )
              ],
            ),
            SizedBox(height: 5.h)
          ],
        ),
      ),
      body: const HomeTab(),
    );
  }
}
