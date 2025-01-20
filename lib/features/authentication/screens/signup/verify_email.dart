import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leakalert/common/widgets/success_screen/success_screen.dart';
import 'package:leakalert/utils/constants/helper_functions.dart';
import 'package:leakalert/utils/constants/t_texts.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,

            actions: [
              IconButton(onPressed: ()=> Get.offAll(() => const LoginScreen()),
                  icon: const Icon(CupertinoIcons.clear))
            ],
            backgroundColor: Colors.white,
            elevation: 0,
          ),
         backgroundColor: Colors.white,
          body:  SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  ///Image

                  Image(image: AssetImage(TImages.waterdrop),width: THelperFunctions.screenWidth(),),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  ///Title & Subtitle
                   Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                   const SizedBox(height: TSizes.spaceBtwItems,),

                  Text('support@leakalert.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  Text(TTexts.confirmEmailsubtitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  ///Buttons
                  SizedBox(width: double.infinity,
                    child: ElevatedButton(
                        onPressed: ()=> Get.to(()=>
                            SuccessScreen(
                              image: TImages.waterdrop,
                              onPressed: () => Get.to(()=> const LoginScreen()),
                              title: TTexts.yourAccountCreatedTitle,
                              subTitle: TTexts.yourAccountCreatedSubTitle,
                            )
                        ),
                          style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button background color
                        foregroundColor: Colors.white,   // Text color
                      ), child: Text(TTexts.continues)),),

                  const SizedBox(height: TSizes.spaceBtwItems,),

                  SizedBox(width: double.infinity,
                    child: TextButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button background color
                      foregroundColor: Colors.blue,   // Text color
                    ), child: Text(TTexts.resend)),
                  ),

            ],
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image

              ///Title & Subtitle

              ///Buttons
            ],
          ),
        ),
      ),
    );
  }
}


 */