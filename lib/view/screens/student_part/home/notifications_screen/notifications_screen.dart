import 'package:flutter/material.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import 'widget/custom_notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true, titleName: "Notifications"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children:  List.generate(12, (value){
              return CustomNotificationList();
            }),
          ),
        ),
      )
    );
  }
}
