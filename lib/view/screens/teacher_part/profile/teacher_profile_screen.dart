import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/utils/app_const/app_const.dart';
import 'package:tutor_app/utils/app_icons/app_icons.dart';
import 'package:tutor_app/view/components/custom_nav_bar/teacher_navbar.dart';
import 'package:tutor_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';
import '../../student_part/profile/widget/custom_profile_menu_list.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height / 5,
                decoration: BoxDecoration(
                  //  color: AppColors.primary,
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.primary.withValues(alpha: .85)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              Positioned(
                  bottom: -50,
                  right: 0,
                  left: 0,
                  child: CircleAvatar(
                    radius: 60,
                    child: CustomNetworkImage(
                        imageUrl: AppConstants.profileImage,
                        border: Border.all(
                          color: AppColors.grey_04,
                          width: 3,
                        ),
                        boxShape: BoxShape.circle,
                        height: 120,
                        width: 120),
                  ))
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomText(
            text: "Charli Puth",
            fontSize: 20.w,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            text: "robertsmith34@gmail.com",
            fontSize: 12.w,
            fontWeight: FontWeight.w500,
            color: AppColors.grey_05,
            bottom: 30.h,
          ),
          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                children: [
                  CustomProfileMenuList(
                    icon: AppIcons.icon1,
                    name: "Profile Setting",
                    onTap: (){
                      Get.toNamed(AppRoutes.teacherProfileSetting);
                    },
                  ),
                  CustomProfileMenuList(
                    icon: AppIcons.icon3,
                    name: "Settings",
                    onTap: (){
                      Get.toNamed(AppRoutes.teacherSettingScreen);
                    },
                  ),
                  CustomProfileMenuList(
                    icon: AppIcons.icon4,
                    name: "Help Center",
                    onTap: (){
                      Get.toNamed(AppRoutes.teacherHelpCenterScreen);
                    },
                  ),
                  CustomProfileMenuList(
                    icon: AppIcons.icon5,
                    name: "Terms & Condition",
                    onTap: (){
                      Get.toNamed(AppRoutes.teacherTermsConditionsScreen);
                    },
                  ),
                  CustomProfileMenuList(
                    icon: AppIcons.icon6,
                    name: "Privacy Policy",
                    onTap: (){
                      Get.toNamed(AppRoutes.teacherPrivacyPolicyScreen);
                    },
                  ),
                  CustomProfileMenuList(
                    icon: AppIcons.icon7,
                    name: "Log Out",
                  ),
                ],
              ))
        ],
      ),
      bottomNavigationBar: TeacherNavbar(currentIndex: 4),
    );
  }
}
