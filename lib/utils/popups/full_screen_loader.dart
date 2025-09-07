import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grabb/common/widgets/loaders/animation_loader.dart';
import 'package:grabb/utils/helpers/helper_functions.dart';

import '../constants/colors.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible:
          false, //Dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, //Disable popping with the back button
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250), //Adjust Spacing as needed
              TAnimationLoaderWidget(text: text, animation: ''),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop(); //Close the dialog using Navigator
  }
}
