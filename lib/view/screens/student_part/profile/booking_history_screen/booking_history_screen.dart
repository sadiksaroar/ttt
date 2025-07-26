import 'package:flutter/material.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'widget/custom_booking_card.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: CustomRoyelAppbar(
          leftIcon: true,
          titleName: "Booking History",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children:  List.generate(8, (value){
                return CustomBookingCard();
              })
            ),
          ),
        ),
      ),
    );
  }
}
