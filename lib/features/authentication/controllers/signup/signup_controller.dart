import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabb/common/widgets/loaders/loaders.dart';
import 'package:grabb/utils/popups/full_screen_loader.dart';

import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/constants/image_strings.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variables'
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); //Form Key for Form Validation

  ///Signup
  Future<void> signup() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are Processing your information...', '');

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      //Form Validation
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      //Privacy Policy and Terms and Conditions Check

      //Register User in Firebase Authentication and save user data in Firebase

      //Save Authenticated user data in Firebase Firestore

      //Show success message

      //Move to verify Email screen
    } catch (e) {
      //Show some generic error to the user
      TLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
