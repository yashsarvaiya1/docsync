import 'package:docsync/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Docsync",
      getPages: AppRoutes().pages,
      initialRoute: AppRoutes.authpage,
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}

