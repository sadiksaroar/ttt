import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../../../../components/custom_text_field/custom_text_field.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(leftIcon: true, titleName: "resetPassword".tr),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CustomText(
                  text: "setNewPassword".tr,
                  fontSize: 22.w,
                  fontWeight: FontWeight.w500,
                  bottom: 6,
                ),
              ),
              Center(
                child: CustomText(
                  text:
                  "setNewPasswordTitle".tr,
                  fontSize: 14.w,
                  fontWeight: FontWeight.w300,
                  maxLines: 2,
                  bottom: 30.h,
                ),
              ),
              SizedBox(height: 50.h,),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "newPassword".tr,
              ),
              SizedBox(height: 16.h,),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "retypeNewPassword".tr,
              ),
              SizedBox(height: 20.h,),
              CustomButton(onTap: (){
                Get.toNamed(AppRoutes.signInScreen);
              }, title: "resetPassword".tr,),
            ],
          ),
        ),
      ),
    );
  }
}
