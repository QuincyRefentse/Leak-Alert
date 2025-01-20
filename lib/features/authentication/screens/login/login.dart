import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leakalert/common/styles/spacing_styles.dart';
import 'package:leakalert/common/widgets/form_divider.dart';
import 'package:leakalert/common/widgets/social_buttons.dart';
import 'package:leakalert/features/authentication/screens/login/widgets/login_form.dart';
import 'package:leakalert/features/authentication/screens/login/widgets/login_header.dart';

import 'package:leakalert/utils/constants/helper_functions.dart';
import 'package:leakalert/utils/constants/image_strings.dart';
import 'package:leakalert/utils/constants/sizes.dart';
import 'package:leakalert/utils/constants/t_colors.dart';
import 'package:leakalert/utils/constants/t_texts.dart';
import 'package:leakalert/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, The title and Sub-title
              LoginHeader(dark: dark),

              /// Form

              LoginForm(),

              //Divider

              FormDivider(dark: dark),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Footer

              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
