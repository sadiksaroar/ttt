import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';

import '../../../../../utils/app_colors/app_colors.dart';

class SetScheduleScreen extends StatefulWidget {
  const SetScheduleScreen({super.key});

  @override
  State<SetScheduleScreen> createState() => _SetScheduleScreenState();
}

class _SetScheduleScreenState extends State<SetScheduleScreen> {
  DateTime today = DateTime.now();
  List<String> selectedSlots = [];
  String? selectedSlot; //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Set Schedule",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Available schedule",
              fontSize: 18.w,
              fontWeight: FontWeight.w500,
              bottom: 10.h,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(1, 2), // changes position of shadow
                  ),
                ],
                color: Colors.white, //
                borderRadius: BorderRadius.circular(
                  10,
                ), // This sets the top background color to red
              ),
              child: TableCalendar(
                calendarStyle: CalendarStyle(
                  defaultTextStyle: TextStyle(color: AppColors.primary),
                  todayDecoration: BoxDecoration(
                    color: AppColors.black,
                    shape: BoxShape.circle,
                  ),
                  todayTextStyle: TextStyle(color: AppColors.primary),
                  selectedDecoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle: TextStyle(color: Colors.white),
                ),
                locale: "en_US",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.w,
                  ),
                  formatButtonVisible: false,
                  titleCentered: true,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: AppColors.white, // Red header background
                  ),
                ),
                availableGestures: AvailableGestures.all,
                //onDaySelected: _onDaySelected,
                selectedDayPredicate:
                    (selectedDay) => isSameDay(selectedDay, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 10, 16),
              ),
            ),
            SizedBox(height: 30.h),
            Spacer(),
            CustomButton(onTap: (){
              Get.toNamed(AppRoutes.paymentScreen);
            },title: "Continue",)

          ],
        ),
      ),
    );
  }
}
