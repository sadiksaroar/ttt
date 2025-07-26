import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';

class CustomMessageListCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? title;
  final String? count;
  final String? time;
  final Function()? onTap;

  const CustomMessageListCard({super.key, this.image, this.name, this.title, this.onTap, this.count, this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CustomNetworkImage(
                          imageUrl: image ?? AppConstants.profileImage,
                          height: 50,
                          width: 50,
                          boxShape: BoxShape.circle,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: name ?? "Charli Puth",
                                fontSize: 16.w,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                              CustomText(
                                text: title ?? "Hello, Good morning. I think",
                                fontSize: 14.w,
                                fontWeight: FontWeight.w300,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.primary,
                        radius: 10,
                        child: CustomText(
                          text: count ??"1",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                      CustomText(
                        top: 10,
                        text: time ?? "11:26 AM",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleTextClr,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(thickness: .1, color: AppColors.titleTextClr),
      ],
    );
  }
}