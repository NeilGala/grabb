import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'data/repositories/authentication_repository.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

//Light and dark Theme
import 'package:grabb/utils/theme/theme.dart';

//Importing App
import 'app.dart';

Future<void> main() async {
  //Add Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  //GetX Local Storage
  await GetStorage.init();

  //TODO: Init Payment methods

  //Await Native Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Initialize Firebase and Authentication Repository
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  //TODO: Initialize Authentication

  runApp(const App());
}
