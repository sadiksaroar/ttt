import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/utils/app_icons/app_icons.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_image/custom_image.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';
import 'package:tutor_app/view/components/custom_text_field/custom_text_field.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(
          leftIcon: true,
          titleName: "Help Center",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Submit a Ticket",
                  fontSize: 18.w,
                  fontWeight: FontWeight.w500,
                  bottom: 20,
                ),
                CustomTextField(
                  fieldBorderColor: AppColors.grey_02,
                  hintText: "Email",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  fieldBorderColor: AppColors.grey_02,
                  hintText: "Phone Number",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  fieldBorderColor: AppColors.grey_02,
                  hintText: "Describe Your Issue",
                  maxLines: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () {},
                  title: "Submit",
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: "Need More Help?",
                  fontSize: 18.w,
                  fontWeight: FontWeight.w500,
                  bottom: 20,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: AppColors.grey_02, width: .6)),
                  child: Row(
                    children: [
                      CustomImage(imageSrc: AppIcons.icon12),
                      SizedBox(width: 10.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Call Us (+1-212-456-7890)",
                            fontSize: 14.w,
                            fontWeight: FontWeight.w500,
                          ),
                          CustomText(
                            text: "Our help line service is active: 24/7",
                            fontSize: 12.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey_05,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
