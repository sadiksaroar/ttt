import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';
import 'package:tutor_app/view/components/custom_text_field/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(
          leftIcon: true,
          titleName: "Change Password",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Set your new password",
                fontSize: 18.w,
                fontWeight: FontWeight.w500,
                bottom: 20.h,
              ),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "Current Password",
                isPassword: true,
              ),
              SizedBox(height: 16.h,),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "New Password",
                isPassword: true,
              ),
              SizedBox(height: 16.h,),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "Retype Password",
                isPassword: true,
              ),
              SizedBox(height: 30.h,),
              CustomButton(onTap: (){}, title: "Change Password",)
            ],
          ),
        ),
      ),
    );
  }
}
