import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_text/custom_text.dart';

class CustomHomeTabBar extends StatelessWidget {
  final List<String> tabs;
  final Function(int) onTabChanged;
  final int curentIndex;
  final VoidCallback onTab;

  const CustomHomeTabBar({
    super.key,
    required this.tabs,
    required this.onTabChanged,
    required this.curentIndex,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(tabs.length, (index) {
        final isSelected = curentIndex == index;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              onTab();
              onTabChanged(index);
            },
            child: Container(
              height: 28.h,
              margin: EdgeInsets.symmetric(horizontal: 4.w, ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: isSelected ? AppColors.white : AppColors.primary, width: .3),
                /* gradient: isSelected
                    ? LinearGradient(
                  colors: [AppColors.linearThree, AppColors.linearTwo],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                )
                    : null,
                color: isSelected ? null : AppColors.secondary,*/
              ),
              child: Center(
                child: CustomText(
                  text: tabs[index],
                  color: isSelected ? Colors.white : AppColors.primary,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}