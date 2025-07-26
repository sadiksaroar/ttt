import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import '../../../../utils/app_const/app_const.dart';
import '../../../components/custom_nav_bar/teacher_navbar.dart';
import '../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../components/custom_text/custom_text.dart';
import 'widget/custom_review_card.dart';
import 'widget/custom_upcoming_sessions.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height / 3.4,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Welcome!",
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
                      Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: AppColors.white,
                                child: Icon(
                                  Icons.notifications_none,
                                  color: AppColors.black,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: -80.h,
                child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.grey_02, width: 1)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CustomNetworkImage(
                                  imageUrl: AppConstants.profileImage,
                                  height: 30,
                                  width: 30,
                                  boxShape: BoxShape.circle,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Marvin McKinney!",
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    CustomText(
                                      text: "Mathematics",
                                      fontSize: 12.w,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.grey_05,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                CustomText(
                                  text: "4.5(48)",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CustomText(
                                  top: 10,
                                  text: "5+",
                                  fontSize: 20.w,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  top: 6,
                                  text: "Year’s of\nExperience",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey_04,
                                ),
                              ],
                            ),
                            Container(
                                height: 80, width: 1, color: AppColors.grey_02),
                            Column(
                              children: [
                                CustomText(
                                  top: 10,
                                  text: "27",
                                  fontSize: 20.w,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  top: 6,
                                  text: "5 Star\nReview",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey_04,
                                ),
                              ],
                            ),
                            Container(
                                height: 80, width: 1, color: AppColors.grey_02),
                            Column(
                              children: [
                                CustomText(
                                  top: 10,
                                  text: "200+",
                                  fontSize: 20.w,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText(
                                  top: 6,
                                  text: "Total\nStudents",
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey_04,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.grey_02, width: 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: AppColors.primary,
                          ),
                          CustomText(
                            left: 8,
                            text: "March 2025",
                            fontSize: 14.w,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      CustomText(
                        top: 6,
                        text: "Total Earning: \$2,585 ",
                        fontSize: 18.w,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Upcoming Sessions",
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: "View All",
                      fontSize: 12.w,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                CustomUpcomingSessions(),
                CustomUpcomingSessions(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Reviews",
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: "View All",
                      fontSize: 12.w,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                CustomReviewCard(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: TeacherNavbar(
        currentIndex: 0,
      ),
    );
  }
}
