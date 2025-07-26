import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../utils/app_icons/app_icons.dart';
import '../widget/custom_profile_menu_list.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Setting",),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              CustomProfileMenuList(
                icon: AppIcons.icon9,
                name: "Change Password",
                onTap: (){
                  Get.toNamed(AppRoutes.changePasswordScreen);
                },
              ),
              CustomProfileMenuList(
                icon: AppIcons.icon10,
                name: "Change Language",
                onTap: (){
                  Get.toNamed(AppRoutes.changeLanguage);
                },
              ),
              CustomProfileMenuList(
                icon: AppIcons.icon11,
                name: "Delete Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
