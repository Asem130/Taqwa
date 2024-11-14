import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taqwa/core/theming/styles.dart';
import 'package:taqwa/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:taqwa/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:taqwa/features/onboarding/ui/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          bottom: 30.h,
        ),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorImageAndText(),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const GetStartedButton(),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}