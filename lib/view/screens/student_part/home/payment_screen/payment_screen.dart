import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutor_app/utils/app_colors/app_colors.dart';
import 'package:tutor_app/view/components/custom_button/custom_button.dart';
import 'package:tutor_app/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Payment",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Payment Option",
              fontSize: 18.w,
              fontWeight: FontWeight.w500,
              bottom: 10.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.grey_02, width: .6)),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 25,
                    color: AppColors.primary,
                  ),
                  CustomText(
                    left: 6,
                    text: "Stripe",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
            CustomText(
              top: 20,
              text: "Booking Details",
              fontSize: 16.w,
              fontWeight: FontWeight.w500,
              bottom: 20,
            ),
            CustomViewRow(
              name: "Order ID:",
              text: "#634656553465",
            ),
            CustomViewRow(
              name: "Tutor:",
              text: "Robert Smith",
            ),
            CustomViewRow(
              name: "Subject:",
              text: "Mathematics",
            ),
            CustomViewRow(
              name: "Schedule Time:",
              text: "12 March, 2025 at 10 am",
            ),
            Spacer(),
            Divider(thickness: .8,color: AppColors.grey_02,),
            SizedBox(height: 10,),
            CustomViewRow(
              name: "Total Fee",
              text: "\$25.00",
            ),
            CustomButton(onTap: (){

            },title: "Proceed to Pay",)
          ],
        ),
      ),
    );
  }
}

class CustomViewRow extends StatelessWidget {
  final String? text;
  final String? name;
  const CustomViewRow({super.key, this.text, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: name ?? "Phone Number",
            fontSize: 14.w,
            fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: text ?? "567-123-4567",
            fontSize: 16.w,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
