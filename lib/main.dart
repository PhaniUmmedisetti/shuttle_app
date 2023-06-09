import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shuttle/controllers/auth_controller.dart';
import 'package:shuttle/views/login_page.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Badminton app',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home:  const LoginScreen());
  }
}
