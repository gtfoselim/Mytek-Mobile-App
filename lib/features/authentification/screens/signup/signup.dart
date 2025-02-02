import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mytekmobile/common/widgets/login_signup/form_divider.dart';
import 'package:mytekmobile/common/widgets/login_signup/social_buttons.dart';
import 'package:mytekmobile/features/authentification/screens/signup/widgets/signup_form.dart';

import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/constants/text_strings.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSignupForm(),

               const SizedBox(height: TSizes.spaceBtwSections,),
                 TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                 const TSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}

