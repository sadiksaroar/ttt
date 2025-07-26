import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/view/components/custom_nav_bar/teacher_navbar.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../components/custom_text/custom_text.dart';
import '../teacher_home_screen/widget/custom_upcoming_sessions.dart';
import '../wallet/widget/custom_wallet_card.dart';
import 'controller/teacher_schedule_controller.dart';
class TeacherScheduleScreen extends StatelessWidget {
  TeacherScheduleScreen({super.key});
  final scheduleController =Get.find<TeacherScheduleController>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Schedule",),
      body: Obx(
       () {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0.w),
                child: Container(
                  height: 40.h,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius:
                    BorderRadius.all(Radius.circular(0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      right: 0,
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        scheduleController.tabNamelist.length,
                            (index) {
                          return GestureDetector(
                            onTap: () {
                              scheduleController
                                  .scheduleTypeIndex
                                  .value = index;
                              scheduleController.update();
                              // userHomeController.getLeaderBoardData();
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 2, ),
                              alignment: Alignment.center,
                              height: 40.h,
                              width: screenWidth/3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(0)),
                                color: scheduleController
                                    .scheduleTypeIndex
                                    .value ==
                                    index
                                    ? AppColors.white
                                    : AppColors.white
                                    .withValues(alpha: 0),
                              ),
                              child: CustomText(
                                text: scheduleController
                                    .tabNamelist[index],
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: scheduleController
                                    .scheduleTypeIndex
                                    .value ==
                                    index
                                    ? AppColors.primary
                                    : AppColors.black
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              if(scheduleController.scheduleTypeIndex.value==0)
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  children: List.generate(5, (value){
                    return CustomUpcomingSessions();
                  }),
                ),
              ),
              if(scheduleController.scheduleTypeIndex.value==1)
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    children: List.generate(5, (value){
                      return CustomWalletCard(status: "Status",statusTitle: "Completed",);
                    }),
                  ),
                ),
              if(scheduleController.scheduleTypeIndex.value==2)
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    children: List.generate(5, (value){
                      return CustomWalletCard(status: "Status",statusTitle: "Cancelled",);
                    }),
                  ),
                )
            ],
          );
        }
      ),
      bottomNavigationBar: TeacherNavbar(currentIndex: 2),
    );
  }
}
