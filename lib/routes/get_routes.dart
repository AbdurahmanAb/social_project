import 'package:get/get.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/main_yes_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome.dart';


class Routes{

  static const String splash = "/splash";
  static const String first_on = "/first";
  static const String access_page = "/access";
  static const String login_page ="/login";
  static const String welcome ="/welcome";
  static const String main = "/main";
  static List<GetPage> routes =[
// GetPage(name: splash, page: ()=>const SplashScreen()),
// GetPage(name: first_on, page: ()=>const FirtOnBoard()),
// GetPage(name: access_page, page: ()=>const AccessPage()),
// GetPage(name: login_page, page: ()=> const LoginPage()),
GetPage(name:welcome, page: ()=>const WelcomeScreen()),
GetPage(name: main, page: ()=>const MainScreen())
  ];

}