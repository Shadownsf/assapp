import 'package:asso/models/article.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleDetails extends StatelessWidget {
  // final DocumentSnapshot article;
  final Article article;

  ArticleDetails({Key key, @required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(this.article['oganisation']),
        title: Text(this.article.organisation),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            Container(
              child: Image.network(
                // article['imageUrl'],
                this.article.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              alignment: Alignment.topCenter,
            ),
            // Text(article['description']),
            Text(this.article.description),
          ])),
    );
  }
}
