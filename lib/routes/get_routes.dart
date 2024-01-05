import 'package:get/get.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome_longe_channel.dart';
import 'package:kim/features/explore/presentation/screen/friend_more.dart';
import 'package:kim/features/explore/presentation/screen/new_open_brand.dart';
import 'package:kim/features/explore/presentation/screen/recent_search.dart';
import 'package:kim/features/feed/presentation/screen/text_feed.dart';
import 'package:kim/features/profile/presentation/screen/gab_insight.dart';
import 'package:kim/features/profile/presentation/screen/others_profile_thumbnail.dart';
import 'package:kim/features/profile/presentation/screen/profile_badge.dart';
import 'package:kim/features/profile/presentation/screen/profile_connection.dart';
import 'package:kim/features/profile/presentation/screen/profile_edit.dart';
import 'package:kim/features/profile/presentation/screen/profile_page.dart';
import 'package:kim/features/profile/presentation/screen/profile_thumbnail.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/main_yes_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/search_screen.dart';
import 'package:kim/features/Lounge_Feed/presentation/screen/welcome.dart';
import 'package:kim/features/explore/presentation/screen/detail_brand.dart';
import 'package:kim/features/explore/presentation/screen/gab_explore.dart';
import 'package:kim/features/explore/presentation/screen/explore_search.dart';
import 'package:kim/features/feed/presentation/screen/get_feed.dart';
import 'package:kim/features/feed/presentation/widgets/ImageView.dart';
import 'package:kim/features/gab_write/presentation/screen/write_vote.dart';
import 'package:kim/features/profile/presentation/screen/profile_follow_list.dart';

class Routes {
  static const String welcome = "/welcome";
  static const String welcomeLounge = "/welcomeLounge";
  static const String main = "/main";
  static const String search = "/search";
  static const String feed = "/feed";
  static const String image = "/image";
  static const String explore = "/explore";
  static const String feedExplore = "/feedexplore";
  static const String recentSearch = "/recentsearch";
  static const String detailBrand = "/detail";
  static const String write = "/write";
  static const String profile = "/profile";
  static const String follows = "/follows";
  static const String profileEdit = "/profileEdit";
  static const String profileLg = "/profilelg";
  static const String profileConnection = "/profileConnection";
  static const String profileBadge = "/profilebadge";
  static const String othersprofile = "/otherprofile";

  static const String gabInsight = "/insight";
  static const String newbrand = "/newbrand";
  static const String textFeed = "/textFeed";
  static const String frienmdMore = "/friendmore";

  static String getFeed(int id) => '$feed?id=$id';
  static String getImage(id) => '$image?id=$id';

  static List<GetPage> routes = [
    GetPage(name: welcome, page: () => const WelcomeScreen()),
    GetPage(name: welcomeLounge, page: () => const WelcomeLoungeChannel()),
    GetPage(name: main, page: () => const MainScreen()),
    GetPage(name: search, page: () => const SearchScreen()),
    GetPage(name: explore, page: () => const GabFeed()),
    GetPage(name: feedExplore, page: () => const ExploreSearch()),
    GetPage(name: recentSearch, page: () => RecentPage()),
    GetPage(name: detailBrand, page: () => const DetailBrand()),
    GetPage(name: profile, page: () => ProfileThumbnail()),
    GetPage(name: follows, page: () => const ProfileFollower()),
    GetPage(name: profileEdit, page: () => ProfileEdit()),
    GetPage(name: profileLg, page: () => ProfilePage()),
    GetPage(name: profileConnection, page: () => ProfileConncetion()),
    GetPage(name: profileBadge, page: () => ProfileBadge()),
    GetPage(name: gabInsight, page: () => GabInsight()),
    GetPage(name: textFeed, page: () => TextFeed()),
    GetPage(name: newbrand, page: () => NewOpenBrand()),
    GetPage(name:othersprofile , page: ()=> OthersProfile()),


    GetPage(
        name: frienmdMore,
        page: () => FriendMore(imgUrl: Get.arguments as List<String>)),
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
          return ImageView(
            path: id!,
          );
        }),
  ];
}
