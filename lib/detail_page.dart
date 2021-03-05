
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String title;

  DetailPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("我的标题是: "+title),
          ],
        ),
      ),
    );
  }
}