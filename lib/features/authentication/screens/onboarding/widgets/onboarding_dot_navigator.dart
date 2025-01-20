import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:leakalert/features/authentication/controllers.onboarding/onboarding_controller.dart'; // Import your OnBoardingController
import 'package:leakalert/utils/constants/helper_functions.dart'; // Import THelperFunctions
import 'package:leakalert/utils/constants/device_utlility.dart'; // Import TDeviceUtils
import 'package:leakalert/utils/constants/sizes.dart'; // Import TSizes
// import 'package:leakalert/utils/constants/t_colors.dart';
import 'package:leakalert/utils/constants/colors.dart'; // Import TColors

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller:
            controller.pageController, // Use the controller's PageController
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.lightBlue : TColors.lightBlue,
          dotHeight: 6,
          dotWidth: 6,
          expansionFactor: 3,
        ),
      ),
    );
  }
}
