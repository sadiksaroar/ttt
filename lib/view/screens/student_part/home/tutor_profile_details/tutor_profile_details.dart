import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/utils/app_const/app_const.dart';
import 'package:tutor_app/utils/app_icons/app_icons.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_image/custom_image.dart';
import 'package:tutor_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';

class TutorProfileDetails extends StatelessWidget {
  const TutorProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomRoyelAppbar(
        leftIcon: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 100.h),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: -80.h,
                  bottom: 0,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CustomNetworkImage(
                            imageUrl: AppConstants.profileImage,
                            height: 140.h,
                            width: 128.w,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Center(
                          child: CustomText(
                            top: 16,
                            text: "Courtney Henry",
                            fontSize: 18.w,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Center(
                          child: CustomText(
                            text: "Mathematics",
                            fontSize: 12.w,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey_04,
                            bottom: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CustomImage(imageSrc: AppIcons.icon13),
                                CustomText(
                                  top: 10,
                                  text: "5 Years",
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  top: 6,
                                  text: "Experience",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey_04,
                                ),
                              ],
                            ),
                            Container(
                                height: 80, width: 1, color: AppColors.grey_02),
                            Column(
                              children: [
                                CustomImage(imageSrc: AppIcons.icon14),
                                CustomText(
                                  top: 10,
                                  text: "4.5",
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  top: 6,
                                  text: "Rating",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey_04,
                                ),
                              ],
                            ),
                            Container(
                                height: 80, width: 1, color: AppColors.grey_02),
                            Column(
                              children: [
                                CustomImage(imageSrc: AppIcons.icon15),
                                CustomText(
                                  top: 10,
                                  text: "\$45/hr",
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  top: 6,
                                  text: "Price",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey_04,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomText(
                          top: 20.h,
                          text: "About",
                          fontSize: 16.w,
                          fontWeight: FontWeight.w500,
                          bottom: 10.h,
                        ),
                        CustomText(
                          text:
                              "Hi, I'm Sarah Ahmed — your friendly neighborhood math mentor! With over 5 years of experience tutoring students from grades 6 to 12, I specialize in breaking down complex math topics into simple, understandable steps.",
                          fontSize: 12.w,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey_04,
                          maxLines: 10,
                          textAlign: TextAlign.start,
                        ),
                        CustomText(
                          top: 20.h,
                          text: "Reviews",
                          fontSize: 16.w,
                          fontWeight: FontWeight.w500,
                          bottom: 10.h,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: AppColors.grey_02, width: .6),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                        SizedBox(height: 40.h),
                        Row(
                          children: [
                            Flexible(
                                child: CustomButton(
                              textColor: AppColors.primary,
                              isBorder: true,
                              fillColor: AppColors.white,
                              borderWidth: .6,
                              onTap: () {},
                              title: "Message",
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                                child: CustomButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.setScheduleScreen);
                              },
                              title: "Book",
                            )),
                          ],
                        ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
