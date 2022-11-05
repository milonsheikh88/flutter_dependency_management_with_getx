import 'package:flutter/material.dart';
import 'package:flutter_dependency_management_with_getx/views/home_page.dart';
import 'package:get/get.dart';
import '../helper/int_controllers.dart' as di;

void main() async{

  /// Initialize all controllers manually....
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Dependency Management With GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
