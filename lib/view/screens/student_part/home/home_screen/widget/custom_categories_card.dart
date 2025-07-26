import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_const/app_const.dart';
import '../../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../../components/custom_text/custom_text.dart';

class CustomCategoriesCard extends StatelessWidget {
  final double? right;
  final double? left;
  final Function()? onTap;
  final Function()? onTapFvt;
  final String? name;
  final String? title;
  final String? price;
  final String? rating;
  final String? image;
  const CustomCategoriesCard({super.key, this.right=0.0, this.left=0.0, this.onTap, this.onTapFvt, this.name, this.title, this.price, this.rating, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width / 2.3,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.grey_02, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomNetworkImage(
                  imageUrl: image ?? AppConstants.profileImage,
                  height: 112.h,
                  width: MediaQuery.sizeOf(context).width / 2,
                  borderRadius: BorderRadius.circular(10),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            CustomText(
              top: 6,
              text: name?? "Charli Puth",
              fontSize: 16.w,
              fontWeight: FontWeight.w600,
            ),
            CustomText(
              top: 4,
              text: title ?? "Mathematics",
              fontSize: 12.w,
              fontWeight: FontWeight.w400,
              color: AppColors.grey_05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: price ?? "\$35",
                      fontSize: 16.w,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                    CustomText(
                      text: "/hr",
                      fontSize: 11.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_05,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    CustomText(
                      text: rating?? "4.8",
                      fontSize: 14.w,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
