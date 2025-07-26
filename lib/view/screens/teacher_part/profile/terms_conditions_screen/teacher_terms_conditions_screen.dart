import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class TeacherTermsConditionsScreen extends StatelessWidget {
  const TeacherTermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Terms & Conditions",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            CustomText(
              text:
                  "Welcome to Forma, the powerful project management app crafted specifically for the steel installation and construction industry. Owned and developed by Sheltech, Forma was built to make your on-site operations smoother, smarter, and more efficient—so you can focus on the work, not the paperwork.",
              fontSize: 14.w,
              fontWeight: FontWeight.w400,
              maxLines: 10,
              textAlign: TextAlign.start,
              bottom: 20,
            ),
            CustomText(
              text:
              "Welcome to Forma, the powerful project management app crafted specifically for the steel installation and construction industry. Owned and developed by Sheltech, Forma was built to make your on-site operations smoother, smarter, and more efficient—so you can focus on the work, not the paperwork.",
              fontSize: 14.w,
              fontWeight: FontWeight.w400,
              maxLines: 10,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
