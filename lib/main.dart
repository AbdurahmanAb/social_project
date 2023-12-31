import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kim/features/feed/domian/poll_controller.dart';
import 'package:kim/routes/get_routes.dart';
import 'package:kim/utils/constants.dart';
import 'package:kim/utils/dependecies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Constants.black, // Replace with your desired color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PollController>().polls;
    return GetMaterialApp(
      title: 'KIM APP',
      theme: ThemeData(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.welcome,
      getPages: Routes.routes,
    );
  }
}
