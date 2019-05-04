import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about_page.dart';
import 'package:flutter_app/pages/publish_tweet_page.dart';
import 'package:flutter_app/pages/settings_page.dart';
import 'package:flutter_app/pages/tweet_black_house.dart';

class MyDrawer extends StatelessWidget {
  final String headImgPath;
  final List menuTitle;
  final List menuIcons;

  MyDrawer(
      {Key key,
      @required this.headImgPath,
      @required this.menuTitle,
      @required this.menuIcons})
      : assert(headImgPath != null),
        assert(menuIcons != null),
        assert(menuTitle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
        padding: const EdgeInsets.all(0.0),
        itemCount: menuTitle.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Image.asset(
              headImgPath,
              fit: BoxFit.cover,
            );
          }
          index -= 1;
          return ListTile(
            leading: Icon(menuIcons[index]),
            title: Text(menuTitle[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              
              switch (index) {
                case 0:
                  _navPush(context, PublishTweetPage());
                  break;
                case 1:
                  _navPush(context, TweetBlackHousePage());
                  break;
                case 2:
                  _navPush(context, AboutPage());
                  break;
                case 3:
                  _navPush(context, SettingsPage());
                  break;
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          if (index == 0) {
            return Divider(
              height: 0.0,
            );
          } else {
            return Divider(
              height: 1.0,
            );
          }
        },
      ),
    );
  }

  Future _navPush(BuildContext context, Widget page) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => page));
  }
}
