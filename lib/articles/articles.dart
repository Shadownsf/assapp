// import 'package:asso/models/article.dart';
import 'package:asso/models/article.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'article_details.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class Articles extends StatelessWidget {
  final List<DocumentSnapshot> documents;

  Articles({Key key, @required this.documents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Article> articles = _articlesFactory(this.documents);
    return Scaffold(
      body: ListView.builder(
        itemCount: documents.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Card(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                      // articles[index]['imageUrl'],
                      articles[index].imageUrl,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text(
                      // articles[index]['oganisation'],
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

  List<Article> _articlesFactory(List<DocumentSnapshot> docs) {
    return docs.map((doc) {
      return Article(
          description: doc['description'],
          organisation: doc['organisation'],
          imageUrl: doc['imageUrl']);
    }).toList();
  }
}
