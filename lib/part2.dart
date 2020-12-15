import 'package:flutter/material.dart';
import 'package:mobile_dev/ListItemInfo.dart';
import 'package:mobile_dev/configPage.dart';
import 'package:mobile_dev/part1.dart';
import 'package:provider/provider.dart';

import 'config/MainPageConfig.dart';

class Lab2 extends StatelessWidget {
  static const String _title = 'Mobile Dev Lab2';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainPageConfig>(
      create: (context) => MainPageConfig(),
      child: MaterialApp(
        title: _title,
        home: MyStatelessWidget(),
      ),
    );
  }
}

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Part 2'),
        ),
        body: Lab2Part1(),
      );
    },
  ));
}

void openConfigPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Config Page'),
        ),
        body: ConfigPage(),
      );
    },
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<MainPageConfig>().getColor,
        leading: IconButton(
          icon: const Icon(Icons.dehaze),
          iconSize: 30.0,
          tooltip: 'More Actions',
          onPressed: () {
            openConfigPage(context);
          },
        ),
        title: Text(context.watch<MainPageConfig>().getTitle),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            iconSize: 30.0,
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
          ListItem.createListItem(new ListItemInfo(
              "GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)),
        ],
      ),
    );
  }
}

class ListItemImage extends StatelessWidget {
  String imageUrl;

  ListItemImage({@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 5.0),
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(imageUrl),
        ),
      ),
    );
  }
}

class ListItemGroupName extends StatelessWidget {
  String groupName;

  ListItemGroupName({@required this.groupName});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainPageConfig>(
      create: (context) => MainPageConfig(),
      child: Container(
        height: 40,
        padding: EdgeInsets.only(bottom: 3.0),
        alignment: Alignment.bottomLeft,
        child: Text(
          groupName,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: context.watch<MainPageConfig>().getFontSize,
            fontWeight: context.watch<MainPageConfig>().getFontWeight,
          ),
        ),
      ),
    );
  }
}

class ListItemUser extends StatelessWidget {
  String user;

  ListItemUser({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(top: 3.0),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: Text(
        '$user:',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, color: Colors.blue[700]),
      ),
    );
  }
}

class ListItemMessage extends StatelessWidget {
  String message;

  ListItemMessage({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(top: 3.0),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: Text(
        ' $message',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
      ),
    );
  }
}

class ListItemTime extends StatelessWidget {
  String time;

  ListItemTime({@required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(bottom: 3.0),
      alignment: Alignment.bottomCenter,
      child: Text(
        time,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.grey[500]),
      ),
    );
  }
}

class ListItemMissedMessages extends StatelessWidget {
  int count;

  ListItemMissedMessages({@required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(top: 3.0),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: Text(
        '$count',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.green[500]),
      ),
    );
  }
}

class ListItem {
  static Widget createListItem(ListItemInfo listItem) {
    return Row(
      children: [
        ListItemImage(imageUrl: listItem.imageURL),
        Flexible(
          flex: 6,
          child: Column(
            children: [
              ListItemGroupName(groupName: listItem.groupName),
              Row(
                children: [
                  ListItemUser(user: listItem.user),
                  Flexible(
                    child: ListItemMessage(message: listItem.message),
                  ),
                ],
              ),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            children: [
              ListItemTime(time: listItem.time),
              ListItemMissedMessages(count: listItem.missedMessages)
            ],
          ),
        ),
      ],
    );
  }
}
