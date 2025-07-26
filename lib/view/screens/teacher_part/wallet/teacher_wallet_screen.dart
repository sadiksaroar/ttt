import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_app/view/components/custom_nav_bar/teacher_navbar.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_text/custom_text.dart';
import 'widget/custom_wallet_card.dart';

class TeacherWalletScreen extends StatelessWidget {
  const TeacherWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Wallet",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.grey_02, width: 1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: AppColors.primary,
                      ),
                      CustomText(
                        left: 8,
                        text: "March 2025",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  CustomText(
                    top: 6,
                    text: "Total Earning: \$2,585 ",
                    fontSize: 18.w,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
            CustomText(
            top: 16,
              text: "Earning History",
              fontSize: 18.w,
              fontWeight: FontWeight.w500,
              bottom: 8,
            ),
            Column(
              children: List.generate(5, (value){
                return CustomWalletCard();
              }),
            )
          ],
        ),
      ),
      bottomNavigationBar: TeacherNavbar(currentIndex: 3),
    );
  }
}
