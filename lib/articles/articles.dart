import 'package:flutter/material.dart';

import 'package:asso/models/article.dart';
import 'package:asso/articles/article_details.dart';

class Articles extends StatelessWidget {
  final List<Article> articles;

  Articles({Key key, @required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("More Pressed");
          },
        ),
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                      articles[index].imageUrl,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text(
                      articles[index].organisation,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
              margin: EdgeInsets.all(10.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArticleDetails(article: articles[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
