import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_const/app_const.dart';
import '../../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../../components/custom_text/custom_text.dart';
class CustomNotificationList extends StatelessWidget {
  const CustomNotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomNetworkImage(
                imageUrl: AppConstants.profileImage,
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
                      text:
                      "Your booking with Alex Rivera for Dec 10, 2024, at 11:30 AM has been confirmed!",
                      fontSize: 12.w,
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                    CustomText(
                      text: "3 days ago",
                      fontSize: 10.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.titleTextClr,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(thickness: .3,color: AppColors.titleTextClr,)
        ],
      ),
    );
  }
}
