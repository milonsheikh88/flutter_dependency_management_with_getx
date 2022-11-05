import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../controllers/shared_preference.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SharedPreference>(() => SharedPreference());
  }
}