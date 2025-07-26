import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';
class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Change Language",),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                elevation: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "English", fontSize: 16.w,fontWeight: FontWeight.w500,),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Divider(thickness: .3,color: AppColors.grey_04,)
                  ],
                ),
              ),
              Card(
                color: Colors.transparent,
                elevation: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Arabic", fontSize: 16.w,fontWeight: FontWeight.w500,),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(height: 4,),
                    Divider(thickness: .3,color: AppColors.grey_04,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
