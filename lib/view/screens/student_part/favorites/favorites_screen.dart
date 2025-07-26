import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_app/core/app_routes/app_routes.dart';
import 'package:tutor_app/utils/app_const/app_const.dart';
import 'package:tutor_app/view/components/custom_nav_bar/navbar.dart';
import '../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../home/home_screen/widget/custom_categories_card.dart';
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(leftIcon: true,titleName: "favorites".tr,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              ///======================= Second Collection Grid View ====================
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    // var data = popularDoctorController.popularList[index];
                    return CustomCategoriesCard(
                      image: AppConstants.girlsPhoto,
                      name: "justina",
                      title: "English",
                      rating: "4.5",
                      price: "\$50",
                      onTap: () {
                        Get.toNamed(AppRoutes.tutorProfileDetails);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 3),
      ),
    );
  }
}
