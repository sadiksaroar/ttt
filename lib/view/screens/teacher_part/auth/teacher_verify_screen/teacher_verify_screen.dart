import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/app_routes/app_routes.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_pin_code/custom_pin_code.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class TeacherVerifyScreen extends StatelessWidget {
  const TeacherVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Teacher Verify Code"),
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
                text: "Check your email",
                fontSize: 22.w,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
            ),
            Center(
              child: CustomText(
                text:
                "We sent a reset link to contact@gmail.com Please enter the 6 digit code.",
                fontSize: 14.w,
                fontWeight: FontWeight.w300,
                maxLines: 2,
                bottom: 30.h,
              ),
            ),
            CustomPinCode(controller: TextEditingController()),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "Resend OTP",
                  fontSize: 10.w,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            CustomButton(onTap: (){
             Get.toNamed(AppRoutes.teacherProfileSetupScreen);
            }, title: "verify Code",),
          ],
        ),
      ),
    );
  }
}
