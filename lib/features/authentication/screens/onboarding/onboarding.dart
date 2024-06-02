import 'package:e_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_store/features/authentication/screens/onboarding/widgets/onboardingdotnavigation.dart';
import 'package:e_store/features/authentication/screens/onboarding/widgets/onboardingnextbutton.dart';
import 'package:e_store/features/authentication/screens/onboarding/widgets/onboardingpage.dart';
import 'package:e_store/features/authentication/screens/onboarding/widgets/onboardingskipbutton.dart';
import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/device/device_utility.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizotal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.OnBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          OnBoardingSkipButton(),
          //Dot navigation SmoothPageIndicator
          OnBoardingBottomNavigation(),
          //Circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
