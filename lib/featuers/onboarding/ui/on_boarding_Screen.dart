import 'package:best_doctor_app/core/theming/styles.dart';
import 'package:best_doctor_app/featuers/onboarding/ui/widgets/GetStartedButton.dart';
import 'package:best_doctor_app/featuers/onboarding/ui/widgets/doctor_photo.dart';
import 'package:best_doctor_app/featuers/onboarding/ui/widgets/logo_with_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              LogoWithName(),
              SizedBox(
                height: 25.h,
              ),
              DoctorPhoto(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GrayRegular,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GetStartedButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
