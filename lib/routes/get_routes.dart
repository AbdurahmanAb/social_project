import 'package:get/get.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/main_yes_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/search_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome.dart';
import 'package:kim/features/explore/presentation/screen/gab_explore.dart';
import 'package:kim/features/feed/presentation/screen/get_feed.dart';
import 'package:kim/features/feed/presentation/widgets/ImageView.dart';


class Routes{


  static const String welcome ="/welcome";
  static const String main = "/main";
  static const String search = "/search";
  static const String feed = "/feed";
    static const String image = "/image";
    static const String explore ="/explore";

static String getFeed(int id) => '$feed?id=$id';
static String getImage(int id) => '$image?id=$id';


  static List<GetPage> routes =[
GetPage(name: feed, page: (){
  var id = Get.parameters['id'];
  return Fedd(id: int.parse(id!));
}),
GetPage(name: image, page: (){
  var id = Get.parameters['id'];
  return ImageView(id: int.parse(id!));
}),
GetPage(name:welcome, page: ()=>const WelcomeScreen()),
GetPage(name: main, page: ()=>const MainScreen()),
 GetPage(name: search, page: ()=>const SearchScreen()),
 GetPage(name: explore, page: ()=>const GabFeed() ),
 
  ];

}