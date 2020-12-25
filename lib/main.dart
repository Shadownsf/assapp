import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:asso/articles/articles.dart';
import 'package:asso/models/article.dart';
// import 'data/data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: Home(),
      theme: ThemeData(primaryColor: Colors.grey[600]),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: firestore.collection('articles').snapshots(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasData && snapshot.data == null) {
          return Text("Something went wrong");
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.active) {
          final List<Article> articles =
              Article.transformAll(snapshot.data.documents);
          return Articles(articles: articles);
        }

        return Text("Loading...");
      },
    );
  }
}
