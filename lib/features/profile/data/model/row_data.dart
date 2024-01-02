import 'package:flutter/material.dart';
import 'package:kim/core/ui/avatar.dart';
class RowData {
  final int ranking;
  final String nickname;
  final int comment;
  final int upvote;
  final Widget avatar;
  final bool isFollowed;

  RowData({
    required this.ranking,
    required this.nickname,
    required this.comment,
    required this.upvote,
    required this.avatar,
    required this.isFollowed,
  });
}

List<RowData> rowDataList = [
  RowData(
    ranking: 1,
    nickname: 'User1',
    comment: 10,
    upvote: 5,
    avatar: AvatarImg(),
    isFollowed: true,
  ),
  RowData(
    ranking: 2,
    nickname: 'User2',
    comment: 5,
    upvote: 2,
    avatar: AvatarImg(Enableborder: false,ImgUrl: "assets/avatar/avatar2.jpg",),
    isFollowed: false,
  ),RowData(
    ranking: 3,
    nickname: 'User2',
    comment: 5,
    upvote: 2,
    avatar: AvatarImg(Enableborder: false,ImgUrl: "assets/avatar/avatar4.jpg",),
    isFollowed: false,
  ),RowData(
    ranking: 4,
    nickname: 'User3',
    comment: 5,
    upvote: 2,
    avatar: AvatarImg(Enableborder: true,ImgUrl: "assets/avatar/avatar.jpg",),
    isFollowed: false,
  ),RowData(
    ranking: 5,
    nickname: 'User4',
    comment: 5,
    upvote: 2,
    avatar: AvatarImg(Enableborder: false,ImgUrl: "assets/avatar/avatar3.jpg",),
    isFollowed: false,
  ),
  // Add more RowData instances as needed
];