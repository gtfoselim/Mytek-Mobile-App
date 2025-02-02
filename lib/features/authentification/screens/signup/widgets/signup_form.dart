

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mytekmobile/features/authentification/screens/signup/verify_email.dart';
import 'package:mytekmobile/features/authentification/screens/signup/widgets/terms_condition.dart';
import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/constants/text_strings.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
 
  });



  @override
  Widget build(BuildContext context) {

    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstname,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields,),
             Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastname,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
         const SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.username,
                    prefixIcon: Icon(Iconsax.user_edit)),
              ),
    const SizedBox(height: TSizes.spaceBtwInputFields,),
    
    
      TextFormField(
               
                decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct)),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
    
    
    
               TextFormField(
                
                decoration: const InputDecoration(
                    labelText: TTexts.phoneNo,
                    prefixIcon: Icon(Iconsax.call)),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
    
    
    
    
               TextFormField(
              obscureText: true,
                decoration: const InputDecoration(
                    labelText: TTexts.password,
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: Icon(Iconsax.eye_slash),
                    ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
    
    
           const TTermsAndConditionCheckbox(),
             const SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text( TTexts.createAccount)),
            )
    
      ],
    ),
    );
  }
}

