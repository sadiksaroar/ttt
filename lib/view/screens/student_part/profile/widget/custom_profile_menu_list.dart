import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomProfileMenuList extends StatelessWidget {
  final String? icon;
  final String? name;
  final Function()? onTap;
  const CustomProfileMenuList({super.key, this.icon, this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Card(
          color: Colors.white,
          elevation: .1,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImage(imageSrc: icon ?? AppIcons.icon1),
                    CustomText(
                      left: 8,
                      text: name?? "",
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_outlined,color: AppColors.primary,size: 18,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
