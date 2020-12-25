import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:asso/models/entity.dart';

class Article implements Entity {
  final String organisation;
  final String description;
  final String imageUrl;

  const Article({this.organisation, this.description, this.imageUrl});

  static List<Article> transformAll(List<DocumentSnapshot> docs) {
    return docs.map((doc) {
      return Article(
          description: doc['description'],
          organisation: doc['organisation'],
          imageUrl: doc['imageUrl']);
    }).toList();
  }

  static Article transform(DocumentSnapshot doc) {
    return Article(
        description: doc['description'],
        organisation: doc['organisation'],
        imageUrl: doc['imageUrl']);
  }
}
