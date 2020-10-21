import 'package:flutter/material.dart';
import 'package:mobile_dev/ListItemInfo.dart';
import 'package:mobile_dev/part1.dart';

class Lab2 extends StatelessWidget {
  static const String _title = 'Mobile Dev Lab2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
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

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        leading: IconButton(
          icon: const Icon(Icons.dehaze),
          iconSize: 30.0,
          tooltip: 'More Actions',
          onPressed: () {},
        ),
        title: const Text('Tiligram'),
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
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
          ListItem.createListItem(new ListItemInfo("GroupName",
              "https://kpi.ua/files/kpi_0.png",
              "User",
              "message",
              "12:00",
              12)
          ),
        ],
      ),
    );
  }
}

class ListItem {
  static Widget createListItem(ListItemInfo listItem) {
    return Row(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 5.0),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(listItem.imageURL),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: Column(
            children: [
              Container(
                height: 40,
                padding: EdgeInsets.only(bottom: 3.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  listItem.groupName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 3.0),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[300]))),
                    child: Text(
                      '${listItem.user}:',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.blue[700]),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(top: 3.0),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey[300]))),
                      child: Text(
                        ' ${listItem.message}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ),
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
              Container(
                height: 40,
                padding: EdgeInsets.only(bottom: 3.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  listItem.time,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.only(top: 3.0),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.grey[300]))),
                child: Text(
                  '${listItem.missedMessages}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.green[500]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
