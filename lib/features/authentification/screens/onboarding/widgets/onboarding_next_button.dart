import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mytekmobile/features/authentification/controllers/onboarding/onboarding_controller.dart';
import 'package:mytekmobile/utils/constants/colors.dart';
import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/device/device_utility.dart';
import 'package:mytekmobile/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuncitons.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: dark ? TColors.primary :const Color.fromARGB(255, 35, 35, 35)),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}