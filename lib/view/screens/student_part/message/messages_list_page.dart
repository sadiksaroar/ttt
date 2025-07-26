import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_app/view/components/custom_nav_bar/navbar.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../utils/app_const/app_const.dart';
import 'widget/custom_message_list_card.dart';

class MessageListScreen extends StatelessWidget {
  const MessageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(leftIcon: true, titleName: "message".tr),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: List.generate(8, (value){
                      return CustomMessageListCard(
                        image: AppConstants.profileImage,
                        name: "Charli Puth",
                        title: "Hi, I am looking for a tutor",
                        count: "5",
                        time: "2day ago",
                      );
                    })
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 1),
      ),
    );
  }
}
