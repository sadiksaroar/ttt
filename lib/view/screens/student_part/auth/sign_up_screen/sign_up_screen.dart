import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../../../../components/custom_text_field/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isTeacher = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 80,
                  bottom: 30,
                ),
                child: ListView(
                  children: [
                    Center(child: CustomImage(imageSrc: AppIcons.logo)),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Radio<bool>(
                              value: false,
                              groupValue: isTeacher,
                              onChanged: (value) {
                                setState(() {
                                  isTeacher = value;
                                });
                              },
                            ),
                            CustomText(
                              text: "student".tr,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<bool>(
                              value: true,
                              groupValue: isTeacher,
                              onChanged: (value) {
                                setState(() {
                                  isTeacher = value;
                                });
                              },
                            ),
                            CustomText(
                              text: "teacher".tr,
                              fontSize: 14.w,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (isTeacher == false) buildForm(isTeacher: false),
                    if (isTeacher == true) buildForm(isTeacher: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildForm({required bool isTeacher}) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        CustomTextField(
          fieldBorderColor: AppColors.grey_02,
          hintText: "fullName".tr,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          fieldBorderColor: AppColors.grey_02,
          hintText: "email".tr,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          fieldBorderColor: AppColors.grey_02,
          hintText: "phoneNumber".tr,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          fieldBorderColor: AppColors.grey_02,
          hintText: "password".tr,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          fieldBorderColor: AppColors.grey_02,
          hintText: "retypeNewPassword".tr,
        ),
        SizedBox(height: 16.h),
        CustomButton(
          onTap: () {
            if (isTeacher) {
              Get.toNamed(AppRoutes.teacherVerifyScreen);
            } else {
              Get.toNamed(AppRoutes.verifyCodeScreen);
            }
          },
          title: "signUp".tr,
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "alreadyHaveAccount".tr,
              fontSize: 14.w,
              fontWeight: FontWeight.w400,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.signInScreen);
              },
              child: CustomText(
                left: 4,
                text: "signIn".tr,
                fontSize: 14.w,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}