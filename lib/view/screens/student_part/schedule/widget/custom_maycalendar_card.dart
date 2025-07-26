import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomMaycalendarCard extends StatelessWidget {
  final Function()? onTap;
  final String? subject;
  final String? image;
  final String? title;
  final String? time;
  const CustomMaycalendarCard({super.key, this.onTap, this.subject, this.image, this.title, this.time});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.grey_02, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                CustomText(
                  text: subject?? "Mathematics",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey_05,
                  bottom: 4,
                ),
                Row(
                  children: [
                    CustomNetworkImage(
                      imageUrl: image?? AppConstants.profileImage,
                      height: 25,
                      width: 25,
                      boxShape: BoxShape.circle,
                    ),
                    CustomText(
                      left: 6,
                      text: title ??"Cody Fisher",
                      fontSize: 14.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_03,
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Icon(
                    Icons.more_vert,
                    color: AppColors.primary,
                  ),
                ),
                CustomText(
                  top: 10,
                  text: time?? "10:00 am-11:00 am",
                  fontSize: 14.w,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey_04,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
