import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomUpcomingSessions extends StatelessWidget {
  const CustomUpcomingSessions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomNetworkImage(
                    imageUrl: AppConstants.profileImage,
                    height: 50,
                    width: 50,
                    boxShape: BoxShape.circle,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Leslie Alexander",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: "13/04/25 at 2 pm",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey_05,
                      ),
                    ],
                  )
                ],
              ),
              CustomButton(
                onTap: (){},
                title: "Mark as Completed",
                fontSize: 12,
                height: 40,
                width: 150,
              )
            ],
          ),
          SizedBox(height: 6.h,),
          Divider(thickness: .3,color: AppColors.grey_05,)
        ],
      ),
    );
  }
}
