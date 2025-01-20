import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leakalert/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:leakalert/features/authentication/screens/signup/signup.dart';
import 'package:leakalert/utils/constants/sizes.dart';
import 'package:leakalert/utils/constants/t_texts.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../../homepage/homescreen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: TSizes.spaceBtwSections,
      ),
      child: Column(
        children: [
          //Email

          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TStrings.email,
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Password

          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TStrings.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          /// Remember me and Forgot Password

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe)
                ],
              ),

              /// Forgot Password

              TextButton(
                  onPressed: () => Get.to(()=> ForgetPassword()), child: const Text(TTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          ///Sign Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                // onPressed: () => Get.to(const HomePage()),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button background color
                        foregroundColor: Colors.white,   // Text color
                        ),
                onPressed: () => Get.to(()=> HomeScreen()),

                child: const Text(TTexts.signIn)),
          ),

          ///Create Account Button

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                foregroundColor: Colors.blue,   // Text color
                ),
                onPressed: () => Get.to(()=> SignUp(),

                ),


                child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    ));
  }
}
