import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leakalert/features/authentication/screens/signup/verify_email.dart';
import 'package:leakalert/utils/constants/helper_functions.dart';
import 'package:leakalert/utils/constants/sizes.dart';
import 'package:leakalert/utils/constants/t_colors.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/t_texts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Optional: remove shadow for a cleaner look
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text and fields
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Form
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch fields
                  children: [
                    Row(
                      children: [
                        // First Name
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields),

                        // Last Name
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Username
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Phone Number
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: TTexts.passWord,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    ///Terms and Conditions

                    Row(
                      children: [
                        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                         Text.rich(TextSpan(
                          children: [
                            TextSpan(text: TTexts.iAgreeTo, style: Theme.of(context).textTheme.bodySmall,),

                            TextSpan(text: '${TTexts.privacy } ' , style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                              decorationColor: dark ? TColors.white : TColors.primary
                            )),

                            TextSpan(text: TTexts.And, style: Theme.of(context).textTheme.bodySmall,),

                            TextSpan(text: '${ TTexts.terms }' , style: Theme.of(context).textTheme.bodySmall!.apply(
                                color: dark ? TColors.white : TColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? TColors.white : TColors.primary
                            )),
                          ]
                        ))

                      ],
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections,),

                    // Sign Up Button

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: ()=> Get.to(()=> VerifyEmailScreen()) ,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Button background color
                            foregroundColor: Colors.white,   // Text color
                          ),
                          child: const Text(TTexts.createAccount)),)

                  ],
                ),
              ),

              //Divider
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

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



/*
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:leakalert/utils/constants/sizes.dart';

import '../../../../utils/constants/t_texts.dart';



class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Optional: remove shadow for a cleaner look

      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(TTexts.signupTitle , style: Theme.of(context).textTheme.headlineMedium,),

              const SizedBox(height: TSizes.spaceBtwItems,),

              //Form

              Form(
                child:Column(
                  children: [
                    Row(
                      children: [

                        //FirstName and LastName
                        Flexible(
                          child: TextFormField(
                            expands : false,
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user)
                            ),
                          ),
                        ),


                        const SizedBox(width: TSizes.spaceBtwInputFields,),
                        Flexible(
                          child: TextFormField(
                            expands : false,
                            decoration: const InputDecoration(
                                labelText: TTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)
                            ),
                          ),
                        ),



                        const SizedBox(height: TSizes.spaceBtwInputFields,),

                        //UserName
                         TextFormField(

                           expands: false,
                            decoration: const InputDecoration(
                                labelText: TTexts.username,
                                prefixIcon: Icon(Iconsax.user_edit)
                            ),
                          ),

                           //Email
                            TextFormField(

                            expands: false,
                            decoration: const InputDecoration(
                            labelText: TTexts.email,
                            prefixIcon: Icon(Iconsax.direct)
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields,),

                        //Phone Number

                        TextFormField(

                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.phoneNo,
                              prefixIcon: Icon(Iconsax.call)
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields,),

                        //Password

                        TextFormField(

                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: TTexts.passWord,
                              prefixIcon: Icon(Iconsax.password_check),
                              suffixIcon: Icon(Iconsax.eye_slash),

                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields,),

                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

*/
