import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/features/utils/constants/image_strings.dart';
import 'package:e_store/features/utils/constants/sizes.dart';
import 'package:e_store/features/utils/constants/text_string.dart';
import 'package:e_store/features/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image,title,subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight*2,
        child: Column(
          children: [
            //Image
            Image(
                image: AssetImage(image),
                width: THelperFunction.screenWidth()*0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child: Text(TTexts.tContinue)),)
          ],
        ),
        ),
      ),
    );
  }
}