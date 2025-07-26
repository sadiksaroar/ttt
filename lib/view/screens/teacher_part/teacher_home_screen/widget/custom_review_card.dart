import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomReviewCard extends StatelessWidget {
  const CustomReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey_02, width: .6),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomNetworkImage(
                      imageUrl: AppConstants.profileImage,
                      height: 30,
                      width: 30,
                      boxShape: BoxShape.circle,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Darrell Steward",
                          fontSize: 14.w,
                          fontWeight: FontWeight.w500,
                        ),
                        Row(
                          children: List.generate(4, (value) {
                            return Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomText(
                  text: "02/04/25",
                  fontSize: 12.w,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_04,
                )
              ],
            ),
            CustomText(
              top: 10,
              text:
              "I used to struggle so much with Algebra, but after just a few sessions with Sarah, everything started making sense. She explains things step-by-step & never makes you feel bad for asking questions.",
              fontSize: 12.w,
              fontWeight: FontWeight.w400,
              maxLines: 10,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
