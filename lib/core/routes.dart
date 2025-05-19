import 'package:docsync/pages/authpage/auth_controller.dart';
import 'package:docsync/pages/authpage/auth_page.dart';
import 'package:docsync/pages/homepage/home_controller.dart';
import 'package:docsync/pages/homepage/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const authpage = "/authpage";
  static const homepage = "/homepage";

  final pages = [
    GetPage(name: authpage, page: () => AuthPage()),
    GetPage(name: homepage, page: () => HomePage()),
  ];
}

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => HomeController());
  }
}
