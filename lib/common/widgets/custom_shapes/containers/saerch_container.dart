import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mytekmobile/utils/constants/colors.dart';
import 'package:mytekmobile/utils/constants/sizes.dart';
import 'package:mytekmobile/utils/device/device_utility.dart';
import 'package:mytekmobile/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal,  this.shaowBackground = true,  this.showBorder= true,
  });

  final String text;
  final IconData? icon;
  final bool shaowBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuncitons.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: shaowBackground ? dark ? TColors.dark : TColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder ?  Border.all(color: TColors.textWhite): null,
        ),
        child: Row(
          children: [
             Icon(icon, color: TColors.grey),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(text,
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
