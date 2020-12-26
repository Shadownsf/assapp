import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:asso/home/home.dart';
import 'package:asso/models/article.dart';
// import 'data/data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asso App',
      home: StreamBuilder(
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
              return Home(articles: articles);
            }

            return Text("Loading...");
          }),
      theme: ThemeData(primaryColor: Colors.grey[800]),
    );
  }
}
