import 'package:flutter/material.dart';

import 'package:asso/models/article.dart';

class ArticleDetails extends StatelessWidget {
  final Article article;

  ArticleDetails({Key key, @required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.article.organisation),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Container(
              child: Image.network(
                this.article.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              alignment: Alignment.topCenter,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.credit_card),
                  tooltip: 'donate for that fondation',
                  iconSize: 35.0,
                  onPressed: () => print("donated !"),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.share),
                  tooltip: 'Share this article',
                  iconSize: 35.0,
                  onPressed: () => print("shared !"),
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  tooltip: 'liker l\'article',
                  iconSize: 35.0,
                  onPressed: () => print("liked !"),
                ),
                IconButton(
                  icon: Icon(Icons.save_alt),
                  tooltip: 'mettre cette article en favori',
                  iconSize: 35.0,
                  onPressed: () => print("saved!"),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'John Doe',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  this.article.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
          ]))),
    );
  }
}
