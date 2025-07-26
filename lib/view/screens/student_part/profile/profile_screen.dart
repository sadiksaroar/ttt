import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/utils/app_const/app_const.dart';
import 'package:tutor_app/utils/app_icons/app_icons.dart';
import 'package:tutor_app/view/components/custom_nav_bar/navbar.dart';
import 'package:tutor_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';
import '../../../components/custom_show_dialog/custom_show_dialog.dart';
import 'widget/custom_profile_menu_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 5,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
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
              height: 60.h,
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
                  name: "accountInfo".tr,
                  onTap: (){
                    Get.toNamed(AppRoutes.accountInfoScreen);
                  },
                ),
                CustomProfileMenuList(
                  icon: AppIcons.icon2,
                  name: "bookingHistory".tr,
                  onTap: (){
                    Get.toNamed(AppRoutes.bookingHistoryScreen);
                  },
                ),
                CustomProfileMenuList(
                  icon: AppIcons.icon3,
                  name: "settings".tr,
                  onTap: (){
                    Get.toNamed(AppRoutes.settingScreen);
                  },
                ),
                CustomProfileMenuList(
                  icon: AppIcons.icon4,
                  name: "helpCenter".tr,
                  onTap: (){
                    Get.toNamed(AppRoutes.helpCenterScreen);
                  },
                ),
                CustomProfileMenuList(
                  icon: AppIcons.icon5,
                  name: "TermsAndConditions".tr,
                  onTap: (){
                    Get.toNamed(AppRoutes.termsConditionsScreen);
                  },
                ),
                CustomProfileMenuList(
                  icon: AppIcons.icon6,
                  name: "privacyPolicy".tr,
                  onTap: (){
                    Get.toNamed(AppRoutes.privacyPolicyScreen);
                  },
                ),
                CustomProfileMenuList(
                  icon: AppIcons.icon7,
                  name: "logOut".tr,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: AppColors.white,
                        insetPadding: EdgeInsets.all(8),
                        contentPadding: EdgeInsets.all(8),
                        content: SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: CustomShowDialog(
                            textColor: AppColors.black,
                            title: "logoutAccount".tr,
                            discription:
                            "Are you sure you want to logout Account.",
                            showRowButton: true,
                            showCloseButton: true,
                            leftTextButton: "Yes",
                            rightTextButton: "No",
                            leftOnTap: () {
                              Get.back();
                            } ,
                            rightOnTap: () {
                              Get.back();
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ))
          ],
        ),
        bottomNavigationBar: NavBar(currentIndex: 4),
      ),
    );
  }
}
