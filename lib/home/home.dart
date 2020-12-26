import 'package:asso/home/home_drawer.dart';
import 'package:flutter/material.dart';

import 'package:asso/models/article.dart';
import 'home_body.dart';

class Home extends StatelessWidget {
  final List<Article> articles;

  Home({Key key, @required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(articles: this.articles),
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text('Home'),
      ),
    );
  }
}
