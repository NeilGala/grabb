import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabb/common/widgets/form_divider.dart';
import 'package:grabb/common/widgets/social_buttons.dart';
import 'package:grabb/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:grabb/utils/constants/sizes.dart';
import 'package:grabb/utils/constants/text_strings.dart';
import 'package:grabb/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Form
              const TSignupForm(),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
