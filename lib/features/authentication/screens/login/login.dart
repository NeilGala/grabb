import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabb/features/authentication/screens/login/widgets/login_form.dart';
import 'package:grabb/features/authentication/screens/login/widgets/login_header.dart';
import 'package:grabb/utils/constants/colors.dart';
import 'package:grabb/utils/constants/sizes.dart';
import 'package:grabb/utils/constants/text_strings.dart';
import 'package:grabb/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        //Header,Form,Divider and Footer
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Header
              const TLoginHeader(),

              ///Form
              const TLoginForm(),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
