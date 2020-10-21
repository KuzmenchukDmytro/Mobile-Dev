import 'package:flutter/material.dart';

class ListItemInfo{
  String groupName;
  String imageURL;
  String user;
  String message;
  String time;
  int missedMessages;

  ListItemInfo(this.groupName,
      this.imageURL,
      this.user,
      this.message,
      this.time,
      this.missedMessages);
}