import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_const/app_const.dart';
import '../../../../../components/custom_button/custom_button.dart';
import '../../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../../components/custom_text/custom_text.dart';
class CustomBookingCard extends StatelessWidget {
  const CustomBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        shadowColor: AppColors.grey_05,
        color: AppColors.white,
        elevation: .3,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomNetworkImage(
                        imageUrl: AppConstants.profileImage,
                        height: 35,
                        width: 35,
                        boxShape: BoxShape.circle,
                      ),
                      CustomText(
                        left: 6,
                        text: "Charli Puth",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  CustomText(
                    left: 6,
                    text: "21/04/25 at 11 am",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey_05,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Mathematics",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey_05,
                  ),
                  CustomButton(
                    height: 35,
                    width: 75,
                    fontSize: 14,
                    borderRadius: 8,
                    onTap: (){},title: "Review",)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
