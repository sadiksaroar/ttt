import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../../utils/app_strings/app_strings.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_show_dialog/custom_show_dialog.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../../../../components/custom_text_field/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final storage = GetStorage();
  bool isEnglishSelected = true;
  int selectedRadio = 0;
  String status = "";

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 80,
            bottom: 30,
          ),
          child: ListView(
            children: [
              Center(child: CustomImage(imageSrc: AppIcons.logo)),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildLanguageButton("English", true),
                      _buildLanguageButton("العربية", false),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "email".tr,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                fieldBorderColor: AppColors.grey_02,
                hintText: "password".tr,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: AppColors.primary,
                      ),
                      CustomText(
                        text: "rememberMe".tr,
                        fontSize: 14.w,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppRoutes.forgotPasswordScreen);
                    },
                    child: CustomText(
                      text: "forgotPassword".tr,
                      fontSize: 12.w,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              CustomButton(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: AppColors.backgroundClr,
                        insetPadding: EdgeInsets.all(8),
                        contentPadding: EdgeInsets.all(8),
                        content: SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: CustomShowDialog(
                            textColor: AppColors.black,
                            title: "Select This",
                            discription:
                            "Select Your Partition to Continue",
                            showRowButton: true,
                            showCloseButton: true,
                            leftTextButton: "Student",
                            rightTextButton: "Teacher",
                            leftOnTap: () {
                              Get.toNamed(AppRoutes.homeScreen);
                            } ,

                            rightOnTap: () {
                              Get.toNamed(AppRoutes.teacherHomeScreen);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  title: 'signIn'.tr),

              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "donHaveAccount".tr,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w400,
                  ),
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppRoutes.signUpScreen);
                    },
                    child: CustomText(
                      left: 4,
                      text: "signUp".tr,
                      fontSize: 14.w,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageButton(String text, bool isEnglish) {
    final bool isSelected = isEnglishSelected == isEnglish;

    return GestureDetector(
      onTap: () {
        setState(() {
          isEnglishSelected = isEnglish;
        });

        final selectedLocale = isEnglish ? const Locale('en', 'US') : const Locale('ar', 'AE');
        Get.updateLocale(selectedLocale);
        storage.write("key", isEnglish ? "en" : "ar");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isEnglish ? 20 : 0),
            bottomLeft: Radius.circular(isEnglish ? 20 : 0),
            topRight: Radius.circular(!isEnglish ? 20 : 0),
            bottomRight: Radius.circular(!isEnglish ? 20 : 0),
          ),
          border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
          boxShadow: isSelected
              ? [
            BoxShadow(
              color: Colors.grey.withAlpha(25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(1, 1),
            ),
          ]
              : [],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}