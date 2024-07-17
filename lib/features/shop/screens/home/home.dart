import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mytekmobile/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:mytekmobile/common/widgets/custom_shapes/containers/saerch_container.dart';
import 'package:mytekmobile/common/widgets/texts/section_heading.dart';
import 'package:mytekmobile/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mytekmobile/utils/constants/colors.dart';

import 'package:mytekmobile/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSearchContainer(
                    text: 'Sarch in Store',
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                               return Column(
                                  children: [
                                    Container(
                                      width: 56,
                                      height: 56,
                                      padding: const EdgeInsets.all(TSizes.sm),
                                      decoration: BoxDecoration(
                                        color: TColors.textWhite,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: Center(
                                        //child: Image(image: AssetImage(),),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
