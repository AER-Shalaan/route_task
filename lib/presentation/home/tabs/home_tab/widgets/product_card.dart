import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../domain/entities/ProductEntity.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/strings_manager.dart';

class ProductCard extends StatelessWidget {
  ProductEntity productEntity;
  ProductCard({super.key,required this.productEntity});

  @override
  Widget build(BuildContext context) {
    String priceAfterDiscount =(productEntity.price!*(1 - productEntity.discountPercentage!/ 100)).toStringAsFixed(2);
    return Container(
      width:191.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          width: 2.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r)
                ),
                child: CachedNetworkImage(
                  imageUrl: productEntity.thumbnail??"",
                  width: 191.w,
                  height: 128.h,
                  fit: BoxFit.fill,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Center(child: Icon(Icons.error,size: 30.sp)),
                ),
              ),
              SvgPicture.asset(
                AssetsManager.favouriteIcon,
                height: 60.h,
                width: 60.w,
              )
            ],
          ),
          Padding(padding: REdgeInsets.symmetric(horizontal: 8.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${productEntity.title}\n\n"??"",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text("${productEntity.description}\n\n"??"",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge),
                  SizedBox(height: 4.h,),
                  productEntity.discountPercentage==null
                      ?Text(
                      "EGP ${productEntity.price}",
                      style: Theme.of(context).textTheme.titleLarge)
                      :Row(
                    children: [
                      Text("EGP $priceAfterDiscount",
                          style: Theme.of(context).textTheme.titleLarge),
                      const Spacer(),
                      Text("${productEntity.price} EGP",
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  SizedBox(
                    width: 191.w,
                    child: Row(
                      children: [
                        Text("${StringsManager.review} (${productEntity.rating})",
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 12.sp)),
                        SizedBox(width: 4.sp),
                        SvgPicture.asset(
                            AssetsManager.starIcon,
                            height: 15.h,
                            width: 15.w),
                        const Spacer(),
                        IconButton(onPressed: (){},
                            icon: SvgPicture.asset(
                                AssetsManager.plusCircleIcon,
                                height: 30.h,
                                width: 30.w)
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
