import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/utils/app_const/app_const.dart';
import 'package:tutor_app/utils/app_icons/app_icons.dart';
import 'package:tutor_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../components/custom_text/custom_text.dart';

class TeacherPersonalInfoScreen extends StatelessWidget {
  const TeacherPersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
          leftIcon: true,
          titleName: "Personal Info",
          rightIcon: AppIcons.icon8,
        rightOnTap: (){
            Get.toNamed(AppRoutes.editTeacherPersonalInfoScreen);
        },
      ),
      body: Column(
        children: [
          Divider(
            thickness: .1,
            color: AppColors.grey_05,
          ),
          CustomNetworkImage(
            imageUrl: AppConstants.profileImage,
            height: 120,
            width: 120,
            boxShape: BoxShape.circle,
            border: Border.all(color: AppColors.grey_04, width: 3),
          ),
          CustomText(
            top: 20,
            text: "Charli Puth",
            fontSize: 20.w,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            text: "robertsmith34@gmail.com",
            fontSize: 12.w,
            fontWeight: FontWeight.w500,
            color: AppColors.grey_05,
            bottom: 50.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomViewRow(),
                CustomViewRow(name: "Subjects I Taught:",text: "Physics, Chemistry",),
                CustomViewRow(name: "Hourly Rate: ",text: "\$45",),
                CustomText(text: "My Bio",fontSize: 14.w,fontWeight: FontWeight.w500,),
                CustomText(text: "Hi, I'm Sarah Ahmed — your friendly neighborhood math mentor! With over 5 years of experience tutoring students from grades 6 to 12, I specialize in breaking down complex math topics into simple, understandable steps.",
                  fontSize: 12.w,
                  top: 10,
                  fontWeight: FontWeight.w400,
                  maxLines: 10,
                  textAlign: TextAlign.start,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}


class CustomViewRow extends StatelessWidget {
  final String? text;
  final String? name;
  const CustomViewRow({super.key, this.text, this.name});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: name?? "Phone Number", fontSize: 14.w,fontWeight: FontWeight.w500,),
          CustomText(text: text ??"567-123-4567", fontSize: 16.w,fontWeight: FontWeight.w400,),
        ],
      ),
    );
  }
}
