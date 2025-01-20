import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leakalert/utils/constants/helper_functions.dart';
import 'package:leakalert/utils/constants/image_strings.dart';
import 'package:leakalert/utils/constants/sizes.dart';
import 'package:leakalert/utils/constants/t_texts.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../../utils/constants/t_colors.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: TSizes.iconSm,
                height: TSizes.iconSm,
                image: AssetImage(TImages.google)),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: TSizes.iconSm,
                height: TSizes.iconSm,
                image: AssetImage(TImages.facebook)),
          ),
        ),
      ],
    );
  }
}
