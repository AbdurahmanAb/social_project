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
    avatar: AvatarImg(),
    isFollowed: false,
  ),
  // Add more RowData instances as needed
];