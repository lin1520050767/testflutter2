import 'package:flutter/material.dart';
import 'package:testflutter2/routes/index/page.dart';
import 'package:testflutter2/test/detail_page.dart';
import 'package:testflutter2/test/myhome.dart';
import 'package:testflutter2/test/test.dart';

Widget createApp() {
  final IndexPage indexPage = IndexPage();
  return MaterialApp(
    title: '测试flutter',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      '/test': (context) => TestPage(title: '测试',),
    },
    onGenerateRoute: (setting) {
      var uri = Uri.parse(setting.name);
      switch (uri.pathSegments.first) {
        case 'detail':
          var title = uri.pathSegments[1];
          return MaterialPageRoute(builder: (context) => DetailPage(title: title));
      }
      return MaterialPageRoute(builder: (context) => MyHomePage(title: '无法路由',));
    },
    home: indexPage.buildPage(null),
  );
}


