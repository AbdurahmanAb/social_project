import 'package:get/get.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/main_yes_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/search_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome.dart';
import 'package:kim/features/feed/presentation/screen/get_feed.dart';


class Routes{


  static const String welcome ="/welcome";
  static const String main = "/main";
  static const String search = "/search";
  static const String feed = "/feed";

static String getFeed(int id) => '$feed?id=$id';


  static List<GetPage> routes =[
GetPage(name: feed, page: (){
  var id = Get.parameters['id'];
  return Fedd(id: int.parse(id!));
}),
GetPage(name:welcome, page: ()=>const WelcomeScreen()),
GetPage(name: main, page: ()=>const MainScreen()),
 GetPage(name: search, page: ()=>const SearchScreen())
 
  ];

}