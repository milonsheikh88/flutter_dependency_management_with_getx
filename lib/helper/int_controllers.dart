import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../controllers/shared_preference.dart';

Future <void> init() async{

Get.lazyPut(()=>HomeController());
Get.lazyPut(()=>SharedPreference());

}