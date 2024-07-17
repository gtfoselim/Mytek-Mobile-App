import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytekmobile/common/styles/spacing_styles.dart';
import 'package:mytekmobile/common/widgets/login_signup/form_divider.dart';
import 'package:mytekmobile/common/widgets/login_signup/social_buttons.dart';
import 'package:mytekmobile/features/authentification/screens/login/widgets/login_form.dart';
import 'package:mytekmobile/features/authentification/screens/login/widgets/login_header.dart';
import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/constants/text_strings.dart';
import 'package:mytekmobile/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFuncitons.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),


              const TLoginForm(),


               TFormDivider(dividerText : TTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),




              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


