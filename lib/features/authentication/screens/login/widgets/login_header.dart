import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leakalert/utils/constants/helper_functions.dart';
import 'package:leakalert/utils/constants/image_strings.dart';
import 'package:leakalert/utils/constants/sizes.dart';
import 'package:leakalert/utils/constants/t_texts.dart';

import '../../../../../utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: THelperFunctions.screenWidth() * 0.6,
          //height: THelperFunctions.screenHeight() * 0.4,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.lightAppLogo),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
