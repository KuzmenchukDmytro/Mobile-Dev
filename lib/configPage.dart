

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_dev/FontWeights.dart';
import 'package:mobile_dev/UsedColors.dart';
import 'package:mobile_dev/part1.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/MainPageConfig.dart';

class ConfigPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainPageConfig>(
        create: (context) => MainPageConfig(),
      child: Scaffold(
        body: Column(
          children: [
            TextCreator.createText("Choice main page header color"),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.red,
                  iconSize: 30.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeColor(Colors.red);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('usedColor', UsedColors.red.index);
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.green,
                  iconSize: 30.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeColor(Colors.green);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('usedColor', UsedColors.green.index);
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.blue,
                  iconSize: 30.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeColor(Colors.blue);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('usedColor', UsedColors.blue.index);
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.yellow,
                  iconSize: 30.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeColor(Colors.yellow);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('usedColor', UsedColors.yellow.index);
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.grey,
                  iconSize: 30.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeColor(Colors.grey);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('usedColor', UsedColors.grey.index);
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.pink,
                  iconSize: 30.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeColor(Colors.pink);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('usedColor', UsedColors.pink.index);
                  }
                ),
              ],
            ),
            TextCreator.createText("Set main page title"),
            TextField(
              onChanged: (newData) => context.read<MainPageConfig>().changeTitle(newData),
            ),
            TextCreator.createText("Set group name font weight"),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.text_format),
                  iconSize: 50.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeFontWeight(FontWeight.normal);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('fontWeight', FontWeights.normal.index);
                  }
                ),
                TextCreator.createText(" ---  Normal"),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.text_format),
                  iconSize: 50.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeFontWeight(FontWeight.bold);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('fontWeight', FontWeights.bold.index);
                  }
                ),
                TextCreator.createText(" ---  Bold"),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.text_format),
                  iconSize: 50.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeFontWeight(FontWeight.w100);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('fontWeight', FontWeights.w100.index);
                  }
                ),
                TextCreator.createText(" ---  w100"),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.text_format),
                  iconSize: 50.0,
                  onPressed: () async{
                    context.read<MainPageConfig>().changeFontWeight(FontWeight.w200);
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('fontWeight', FontWeights.w200.index);
                  }
                ),
                TextCreator.createText(" ---  w200"),
              ],
            ),
            TextCreator.createText("Change group name font size"),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.plus_one),
                  iconSize: 40.0,
                  onPressed: () => context.read<MainPageConfig>().changeFontSize(1.0),
                ),
                TextCreator.createText(" ---  Increase font size"),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.exposure_minus_1),
                  iconSize: 40.0,
                  onPressed: () => context.read<MainPageConfig>().changeFontSize(-1.0),
                ),
                TextCreator.createText(" ---  Reduce font size"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
