import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../student_part/profile/controller/profile_controller.dart';

class TeacherProfileSetupScreen extends StatefulWidget {
  TeacherProfileSetupScreen({super.key});

  @override
  _ProfileSetupScreenState createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<TeacherProfileSetupScreen> {
  final TextEditingController bioController = TextEditingController();
  final TextEditingController rateController = TextEditingController(text: '\$45');
  final profileController = Get.find<ProfileController>();
  List<String> availableSubjects = ['Physics', 'Chemistry', 'Math', 'Biology'];
  List<String> selectedSubjects = ['Physics', 'Chemistry'];

  void _toggleSubject(String subject) {
    setState(() {
      if (selectedSubjects.contains(subject)) {
        selectedSubjects.remove(subject);
      } else {
        selectedSubjects.add(subject);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Profile Setup",),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Obx(() {
                    // Check if an image is selected, if not use the default profile image
                    if (profileController.selectedImage.value != null) {
                      return Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: FileImage(profileController.selectedImage.value!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return CustomNetworkImage(
                        imageUrl: AppConstants.profileImage,
                        height: 120.h,
                        width: 120.w,
                        boxShape: BoxShape.circle,
                      );
                    }
                  }),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        profileController.pickImageFromGallery();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 18,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(height: 20.h),
            Text("Bio", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(
              controller: bioController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Write here",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.h),
            Text("Subjects You Teach", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  ...selectedSubjects.map((subject) => Chip(
                    label: Text(subject),
                    onDeleted: () => _toggleSubject(subject),
                  )),
                  DropdownButton<String>(
                    hint: Icon(Icons.arrow_drop_down),
                    underline: SizedBox(),
                    items: availableSubjects
                        .where((subj) => !selectedSubjects.contains(subj))
                        .map((subject) {
                      return DropdownMenuItem(
                        value: subject,
                        child: Text(subject),
                      );
                    }).toList(),
                    onChanged: (subject) {
                      if (subject != null) _toggleSubject(subject);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text("Hourly Rate", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(
              controller: rateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30.h),
            CustomButton(onTap: (){
              Get.toNamed(AppRoutes.teacherAvailabilityScreen);
            },title: "Save & Continue",),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}