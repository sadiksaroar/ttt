import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_app/view/components/custom_nav_bar/navbar.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_show_dialog/custom_show_dialog.dart';
import 'widget/custom_maycalendar_card.dart';

class MyCalendarScreen extends StatelessWidget {
  const MyCalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(
          leftIcon: true,
          titleName: "My Calendar",
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
             Column(
               children: List.generate(3, (value){
                 return CustomMaycalendarCard(
                   subject: "Mathematics",
                   title: "Cody Fisher",
                   time: "9:00 AM - 10:00 AM",
                   onTap: () {
                     showDialog(
                       context: context,
                       builder: (ctx) => AlertDialog(
                         backgroundColor: AppColors.white,
                         insetPadding: EdgeInsets.all(8),
                         contentPadding: EdgeInsets.all(8),
                         content: SizedBox(
                           width: MediaQuery.sizeOf(context).width,
                           child: CustomShowDialog(
                             textColor: AppColors.black,
                             title: "Are you sure to cancel",
                             discription:
                             "If you cancel this session 30% of the session fee will be deducted, rest of fee will be refunded within 48 Hours to your account.",
                             showRowButton: true,
                             showCloseButton: true,
                             leftTextButton: "Confirm",
                             rightTextButton: "Cancel",
                             leftOnTap: () {
                              Get.back();
                             } ,
                             rightOnTap: () {
                               Get.back();
                             },
                           ),
                         ),
                       ),
                     );
                   },
                 );
               }),
             )
            ],
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 2),
      ),
    );
  }
}
