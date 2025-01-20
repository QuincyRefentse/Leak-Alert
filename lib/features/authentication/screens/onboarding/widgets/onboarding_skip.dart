import 'package:flutter/material.dart';
import 'package:leakalert/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:leakalert/utils/constants/device_utlility.dart';
import 'package:leakalert/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage,
        child: const Text('Skip'),
      ),
    );
  }
}
