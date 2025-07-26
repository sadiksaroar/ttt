import 'package:flutter/material.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../home_screen/widget/custom_categories_card.dart';
class PopularTutorScreen extends StatelessWidget {
  const PopularTutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,titleName: "Popular Tutor",),
      body: Expanded(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.80,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            // var data = popularDoctorController.popularList[index];
            return CustomCategoriesCard(right: 0,);
          },

        ),
      ),
    );
  }
}
