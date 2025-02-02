import 'package:flutter/material.dart';
import 'package:mytekmobile/common/widgets/appbar/appbar.dart';
import 'package:mytekmobile/common/widgets/product/cart/cart_menu_icon.dart';

import 'package:mytekmobile/utils/constants/colors.dart';
import 'package:mytekmobile/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.textWhite)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.textWhite)),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: (){}, iconColor: TColors.textWhite,),
      ],
    );
  }
}

