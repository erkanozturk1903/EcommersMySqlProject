// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_project_mysql/users/auth/login_screen.dart';
import 'package:ecommerce_project_mysql/users/fragments/dashboard_of_fragments.dart';
import 'package:ecommerce_project_mysql/users/userPreferences/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clothes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: RememberUserPrefs.readUserInfo(),
        builder: (context, dataSnapShot) {
          if(dataSnapShot.data == null) {
            return LoginScreen();
          }else {
            return DashboardOfFragments();
          }
        },
      ),
    );
  }
}
