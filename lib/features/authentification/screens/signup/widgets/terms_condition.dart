
import 'package:flutter/material.dart';
import 'package:mytekmobile/utils/constants/colors.dart';
import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/constants/text_strings.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,

  });

  
  @override
  Widget build(BuildContext context) {
     final dark = THelperFuncitons.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24,height: 24,  child: Checkbox(value: true, onChanged: (value){})),
       const SizedBox(width: TSizes.spaceBtwItems,),
       Text.rich(
        TextSpan(children: [
        
          TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
       TextSpan(text: '${TTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
        color: dark ? TColors.textWhite : TColors.primary,
        decoration: TextDecoration.underline,
        decorationColor: dark ? TColors.textWhite : TColors.primary,
       )),
      TextSpan(children: [TextSpan(text: '${TTexts.and} ', style: Theme.of(context).textTheme.bodySmall)]
      ),
      TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
        color: dark ? TColors.textWhite : TColors.primary,
        decoration: TextDecoration.underline,
        decorationColor: dark ? TColors.textWhite : TColors.primary,
       )),
        ],
        ),
      ),
      
      ],
    );
  }
}
