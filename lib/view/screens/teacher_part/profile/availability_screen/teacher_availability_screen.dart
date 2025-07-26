import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';

class TeacherAvailabilityScreen extends StatefulWidget {
  const TeacherAvailabilityScreen({super.key});

  @override
  State<TeacherAvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<TeacherAvailabilityScreen> {
  final List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List<String> timeSlots = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM',
    '6:00 PM',
    '7:00 PM',
    '8:00 PM',
    '9:00 PM',
    '10:00 PM'
  ];

  String selectedDay = 'Sun';
  Set<String> selectedTimeSlots = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Availability",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Set Your Weekly Availability",
              fontSize: 18.w,
              fontWeight: FontWeight.w500,
              bottom: 16,
            ),
            CustomText(
              text: "Select Day",
              fontSize: 16.w,
              fontWeight: FontWeight.w500,
              bottom: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: days.map((day) {
                  final shortDay = day.substring(0, 3); // Only first 3 letters
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center, // This ensures vertical + horizontal centering
                      child: ChoiceChip(
                        label: Text(
                          shortDay,
                          textAlign: TextAlign.start,
                        ),
                        selected: selectedDay == day,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedDay = day;
                            selectedTimeSlots.clear();
                          });
                        },
                        selectedColor: const Color(0xFFDCF0F9),
                        backgroundColor: Colors.white,
                        labelStyle: TextStyle(
                          color: selectedDay == day ? Colors.black : Colors.black,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: selectedDay == day
                                ? Colors.transparent
                                : Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            CustomText(
              top: 20,
              text: "Select Time Slot",
              fontSize: 16.w,
              fontWeight: FontWeight.w500,
              bottom: 12,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 3,
                ),
                itemCount: timeSlots.length,
                itemBuilder: (context, index) {
                  final time = timeSlots[index];
                  final isSelected = selectedTimeSlots.contains(time);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedTimeSlots.remove(time);
                        } else {
                          selectedTimeSlots.add(time);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected
                              ?  AppColors.primary
                              : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color:
                            isSelected ? const Color(0xFFE5F0FF) : Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        time,
                        style: TextStyle(
                          color: isSelected
                              ? AppColors.primary
                              : Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
           CustomButton(onTap: (){
             Get.toNamed(AppRoutes.teacherDocumentsScreen);
           }, title: "Save Availability",)
          ],
        ),
      ),
    );
  }
}
