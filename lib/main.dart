import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/routes/get_routes.dart';
import 'package:kim/utils/dependecies.dart';


void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'KIM APP',
     theme: ThemeData(
      
     ),
      themeMode: ThemeMode.dark,    darkTheme: ThemeData(brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
        
      initialRoute: Routes.welcome,
      getPages :Routes.routes,
    );
  }
}
