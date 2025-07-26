import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_routes/app_routes.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../components/custom_image/custom_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAllNamed(AppRoutes.signInScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CustomImage(imageSrc: AppIcons.logo)),
        ],
      ),
    );
  }
}
