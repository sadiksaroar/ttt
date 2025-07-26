import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';

class CustomWalletCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? title;
  final String? status;
  final String? statusTitle;
  final Function()? onTap;

  const CustomWalletCard({super.key, this.image, this.name, this.title, this.onTap, this.status, this.statusTitle});

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
              padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
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
                                text: name ?? "Annette Black",
                                fontSize: 14.w,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),
                              CustomText(
                                text: title ?? "12/08/24",
                                fontSize: 12.w,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.start,
                                color: AppColors.grey_05,
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
                      CustomText(
                        text: status ??"Order ID #23523636",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey_05,
                      ),
                      CustomText(
                        top: 10,
                        text: statusTitle ??"\$25.00",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
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