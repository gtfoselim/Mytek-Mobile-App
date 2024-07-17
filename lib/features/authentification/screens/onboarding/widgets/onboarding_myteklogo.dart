import 'package:flutter/material.dart';
import 'package:mytekmobile/utils/constants/image_strings.dart';
import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/device/device_utility.dart';

class OnBoardingMytekLogo extends StatelessWidget {
  const OnBoardingMytekLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
       top: TDeviceUtils.getAppBarHeight(),
       left: TSizes.defaultSpace,
       child: SizedBox(
         width: 80, 
         height: 80, 
         child: Image.asset(TImages.myteklogo),
       ),
    );
  }
}