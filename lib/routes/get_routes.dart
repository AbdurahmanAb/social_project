import 'package:get/get.dart';
import 'package:kim/features/Splash/presentation/screen/acces_page.dart';
import 'package:kim/features/Splash/presentation/screen/first_onboard.dart';
import 'package:kim/features/Splash/presentation/screen/splash_screen.dart';

class Routes{

  static const String splash = "/splash";
  static const String first_on = "/first";
  static const String access_page = "/access";

  static List<GetPage> routes =[
GetPage(name: splash, page: ()=>const SplashScreen()),
GetPage(name: first_on, page: ()=>const FirtOnBoard()),
GetPage(name: access_page, page: ()=>const AccessPage())
  ];

}