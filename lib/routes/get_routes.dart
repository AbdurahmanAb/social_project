import 'package:get/get.dart';
import 'package:kim/core/ui/profile_thumbnail.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/main_yes_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/search_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome.dart';
import 'package:kim/features/explore/presentation/screen/detail_brand.dart';
import 'package:kim/features/explore/presentation/screen/gab_explore.dart';
import 'package:kim/features/explore/presentation/screen/explore_search.dart';
import 'package:kim/features/feed/presentation/screen/get_feed.dart';
import 'package:kim/features/feed/presentation/widgets/ImageView.dart';
import 'package:kim/features/gab_write/presentation/screen/write_vote.dart';

class Routes {
  static const String welcome = "/welcome";
  static const String main = "/main";
  static const String search = "/search";
  static const String feed = "/feed";
  static const String image = "/image";
  static const String explore = "/explore";
  static const String feedExplore = "/feedexplore";
  static const String detailBrand = "/detail";
  static const String write = "/write";
  static const String profile = "/profile";

  static String getFeed(int id) => '$feed?id=$id';
  static String getImage(int id) => '$image?id=$id';

  static List<GetPage> routes = [
    GetPage(name: welcome, page: () => const WelcomeScreen()),
    GetPage(name: main, page: () => const MainScreen()),
    GetPage(name: search, page: () => const SearchScreen()),
    GetPage(name: explore, page: () => const GabFeed()),
    GetPage(name: feedExplore, page: () => const ExploreSearch()),
    GetPage(name: detailBrand, page: () => const DetailBrand()),
    GetPage(name: profile, page: () => const ProfileThumbnail()),
    GetPage(
      name: write,
      page: () => const WriteVote(),
    ),
    GetPage(
        name: feed,
        page: () {
          var id = Get.parameters['id'];
          return Fedd(id: int.parse(id!));
        }),
    GetPage(
        name: image,
        page: () {
          var id = Get.parameters['id'];
          return ImageView(id: int.parse(id!));
        }),
  ];
}
