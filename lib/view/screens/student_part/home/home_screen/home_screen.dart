import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_const/app_const.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_nav_bar/navbar.dart';
import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';
import '../../../../components/custom_text_field/custom_text_field.dart';
import '../controller/home_controller.dart';
import 'widget/custom_categories_card.dart';
import 'widget/custom_home_tabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 3.5,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomNetworkImage(
                              imageUrl: AppConstants.profileImage,
                              height: 50,
                              width: 50,
                              boxShape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.grey_04,
                                width: 3,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "welcomeTo".tr,
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                                CustomText(
                                  text: "Mehedi Bin Ab. Salam",
                                  fontSize: 14.w,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(AppRoutes.notificationsScreen);
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: AppColors.white,
                                child: Icon(
                                  Icons.notifications_none,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            Positioned(
                              top: -6.w,
                              right: -6.w,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: AppColors.dipRed,
                                child: CustomText(
                                  text: "3",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 5,
                          child: CustomTextField(
                            isDens: true,
                            prefixIcon: Icon(Icons.search, size: 35),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CustomImage(imageSrc: AppIcons.setting),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Categories",
                        fontSize: 18.w,
                        fontWeight: FontWeight.w500,
                      ),
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoutes.allCategoriesScreen);
                        },
                        child: CustomText(
                          text: "View All",
                          fontSize: 12.w,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
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
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (index) {
                        double left = index == 0 ? 0.0 : 4.0;  // First item has more left padding
                        double right = index == 3 ? 12.0 : 4.0; // Last item has more right padding
                        return Padding(
                          padding: EdgeInsets.only(left: left, right: right),
                          child: CustomCategoriesCard(
                            onTap: (){
                              Get.toNamed(AppRoutes.tutorProfileDetails);
                            },
                            image: AppConstants.profileImage,
                            name: "Mehedi",
                            title: "Physics",
                            price: "\$50",
                            rating: "5.0",
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Popular Tutor",
                        fontSize: 18.w,
                        fontWeight: FontWeight.w500,
                      ),
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoutes.popularTutorScreen);
                        },
                        child: CustomText(
                          text: "View All",
                          fontSize: 12.w,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (index) {
                        double left = index == 0 ? 0.0 : 4.0;  // First item has more left padding
                        double right = index == 3 ? 12.0 : 4.0; // Last item has more right padding
                        return Padding(
                          padding: EdgeInsets.only(left: left, right: right),
                          child: CustomCategoriesCard(
                            onTap: (){
                              Get.toNamed(AppRoutes.tutorProfileDetails);
                            },
                            image: AppConstants.profileImage,
                            name: "Mehedi",
                            title: "Physics",
                            price: "\$50",
                            rating: "5.0",
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavBar(currentIndex: 0),
      ),
    );
  }
}
