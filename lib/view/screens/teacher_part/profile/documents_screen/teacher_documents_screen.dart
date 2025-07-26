import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/utils/app_icons/app_icons.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:tutor_app/view/components/custom_text/custom_text.dart';

import '../../../../../core/app_routes/app_routes.dart';

class TeacherDocumentsScreen extends StatefulWidget {
  const TeacherDocumentsScreen({super.key});

  @override
  State<TeacherDocumentsScreen> createState() => _DocumentUploadScreenState();
}

class _DocumentUploadScreenState extends State<TeacherDocumentsScreen> {
  // Temporary images (normally you would pick them from gallery or camera)
  String? idImagePath;
  String? certificateImagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Documents",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CustomText(
              text: "ID and Certificate",
              fontSize: 18.w,
              fontWeight: FontWeight.w500,
              bottom: 12,
              textAlign: TextAlign.start,
            ),
            CustomText(
              text: "NID / Passport / Driving License",
              fontSize: 16.w,
              fontWeight: FontWeight.w400,
              bottom: 12,
              textAlign: TextAlign.start,
            ),
            Center(
              child: idImagePath != null
                  ? Image.network(
                      idImagePath!,
                      height: 150,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      'assets/id_sample.png', // Replace with your placeholder
                      height: 150,
                      fit: BoxFit.contain,
                    ),
            ),
            const SizedBox(height: 12),
            DottedUploadButton(
              onTap: () {
                // Upload ID logic
                setState(() {
                  idImagePath =
                      'https://via.placeholder.com/300x150.png?text=Uploaded+ID';
                });
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Teaching Certificate',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Center(
              child: certificateImagePath != null
                  ? Image.network(
                      certificateImagePath!,
                      height: 150,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      AppIcons.eye, // Replace with your placeholder
                      height: 150,
                      fit: BoxFit.contain,
                    ),
            ),
            const SizedBox(height: 12),
            DottedUploadButton(
              onTap: () {
                // Upload Certificate logic
                setState(() {
                  certificateImagePath =
                      'https://via.placeholder.com/300x150.png?text=Uploaded+Certificate';
                });
              },
            ),
            const SizedBox(height: 30),
           CustomButton(onTap: (){
             Get.toNamed(AppRoutes.signInScreen);
           },title: "Submit Documents",)
          ],
        ),
      ),
    );
  }
}

class DottedUploadButton extends StatelessWidget {
  final VoidCallback onTap;

  const DottedUploadButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DottedBorderContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add_circle_outline, color: Color(0xFF236E8D)),
            SizedBox(width: 8),
            Text(
              'Re-upload',
              style: TextStyle(
                color: Color(0xFF236E8D),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DottedBorderContainer extends StatelessWidget {
  final Widget child;

  const DottedBorderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          style: BorderStyle.solid,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: child),
    );
  }
}
