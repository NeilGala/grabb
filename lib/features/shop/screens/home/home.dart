import 'package:flutter/material.dart';
import 'package:grabb/common/widgets/appbar/appbar.dart';
import 'package:grabb/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:grabb/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:grabb/features/shop/screens/home/widgets/home_categories.dart';
import 'package:grabb/utils/constants/sizes.dart';
import 'package:grabb/utils/device/device_utility.dart';
import 'package:grabb/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_bar_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/products/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///App Bar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Search Bar
                  TSearchBarContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///Horizontal Scrollable Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
