import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:leakalert/common/styles/spacing_styles.dart';
import 'package:leakalert/features/authentication/screens/login/login.dart';

import '../../../utils/constants/helper_functions.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/t_texts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight*2,
         child: Column(
          children: [
            ///Image

            Image(image: AssetImage(image),width: THelperFunctions.screenWidth(),),
            const SizedBox(height: TSizes.spaceBtwSections,),

            ///Title & Subtitle
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            ///Buttons
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                  onPressed: ()=> Get.to(()=> LoginScreen()),


                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color
                    foregroundColor: Colors.white,   // Text color
                  ), child: Text(TTexts.continues)),),
          ],
        ),
        ),
      ),
    );
  }
}
