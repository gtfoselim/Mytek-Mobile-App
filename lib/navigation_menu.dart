import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mytekmobile/features/shop/screens/home/home.dart';
import 'package:mytekmobile/utils/constants/colors.dart';
import 'package:mytekmobile/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFuncitons.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
              backgroundColor: darkMode ? TColors.dark : Colors.white,
              indicatorColor: darkMode ? TColors.textWhite.withOpacity(0.1) : TColors.dark.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(CupertinoIcons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(CupertinoIcons.shopping_cart), label: 'Cart'),
            NavigationDestination(icon: Icon(CupertinoIcons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.deepPurple),
    Container(color: Colors.blue)
  ];
}
