import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_from_card/custom_from_card.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../student_part/profile/controller/profile_controller.dart';
class EditTeacherPersonalInfoScreen extends StatelessWidget {
  EditTeacherPersonalInfoScreen({super.key});
  final profileController =Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Edit Profile",),
      body: Column(
        children: [
          Divider(
            thickness: .1,
            color: AppColors.grey_05,
          ),
          //========= Font-end Design Flutter Image Picker Code ===========//
         Expanded(child: ListView(
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
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
             CustomFormCard(
                 title: "Full Name",
                 hintText: "Charli Puth",
                 controller: TextEditingController()),
             CustomFormCard(
                 title: "Phone Number",
                 hintText: "016-206352",
                 controller: TextEditingController()),
             CustomFormCard(
                 title: "Subjects You Teach",
                 hintText: "016-206352",
                 controller: TextEditingController()),
             CustomFormCard(
                 title: "Hourly Rate",
                 hintText: "\$45",
                 controller: TextEditingController()),
             CustomFormCard(
                 title: "My Bio",
                 hintText: "016-206352",
                 maxLine: 5,
                 controller: TextEditingController()),

             SizedBox(height: 20.h,),
             CustomButton(onTap: (){}, title: "Update",),
             SizedBox(height: 50,),

           ],
         ))

        ],
      ),
    );
  }
}
