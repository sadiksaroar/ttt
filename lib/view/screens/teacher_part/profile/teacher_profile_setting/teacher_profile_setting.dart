import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../student_part/profile/widget/custom_profile_menu_list.dart';
class TeacherProfileSetting extends StatelessWidget {
  const TeacherProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Profile Settings",),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20.0),
        child: Column(
          children: [
            CustomProfileMenuList(
              icon: AppIcons.icon16,
              name: "Personal Info",
              onTap: (){
                Get.toNamed(AppRoutes.teacherPersonalInfoScreen);
              },
            ),
            CustomProfileMenuList(
              icon: AppIcons.icon17,
              name: "Availability",
              onTap: (){
                 Get.toNamed(AppRoutes.teacherAvailabilityScreen);
              },
            ),
            CustomProfileMenuList(
              icon: AppIcons.icon18,
              name: "Documents",
              onTap: (){
                 Get.toNamed(AppRoutes.teacherDocumentsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
