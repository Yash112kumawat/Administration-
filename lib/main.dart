import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/auth_screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCIKUWcjZJ9Qjw06M_Avx2lAg1IkSZK824",
          appId: "1:344554622496:android:8ea1977c023eb5339c7645",
          messagingSenderId: "344554622496",
          storageBucket: "yami-jewels-72d42.appspot.com",
          projectId: "yami-jewels-72d42"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      home: LoginScreen(),
    );
  }
}
