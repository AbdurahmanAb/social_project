import 'package:get/get.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/main_yes_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/search_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome.dart';


class Routes{


  static const String welcome ="/welcome";
  static const String main = "/main";
  static const String search = "/search";




  static List<GetPage> routes =[

GetPage(name:welcome, page: ()=>const WelcomeScreen()),
GetPage(name: main, page: ()=>const MainScreen()),
 GetPage(name: search, page: ()=>const SearchScreen())
 
  ];

}