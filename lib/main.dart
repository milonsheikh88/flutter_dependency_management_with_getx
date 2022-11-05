import 'package:flutter/material.dart';
import 'package:flutter_dependency_management_with_getx/views/home_page.dart';
import 'package:get/get.dart';
import 'bindings/root_binding.dart';

void main() async{

  /** Initialize all controllers manually....*/
  WidgetsFlutterBinding.ensureInitialized();
  RootBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: RootBinding(),
      title: 'Flutter Dependency Management With GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
