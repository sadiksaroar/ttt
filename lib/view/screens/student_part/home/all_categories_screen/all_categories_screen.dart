import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../controller/home_controller.dart';
import '../home_screen/widget/custom_categories_card.dart';
import '../home_screen/widget/custom_home_tabbar.dart';
class AllCategoriesScreen extends StatelessWidget {
  AllCategoriesScreen({super.key});
  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Categories",),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Obx(() {
              return CustomHomeTabBar(
                curentIndex: homeController.selectedIndex.value,
                onTab: () {},
                tabs: ['All', 'English', 'Physics', 'Biology', 'Chemistry'],
                onTabChanged: (index) {
                  homeController.selectedIndex.value = index;
                },
              );
            }),
            SizedBox(height: 20.h,),
            ///======================= Second Collection Grid View ====================
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 10,
                ),
               // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                 // var data = popularDoctorController.popularList[index];
                  return CustomCategoriesCard();
                },
                /*   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}
