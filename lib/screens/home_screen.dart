import 'package:flutter/material.dart';
import 'package:newsapk/models/article.dart';
import 'package:newsapk/widgets/drawer.dart';
import 'package:newsapk/widgets/news_widgets.dart';

import '../news_api.dart';

class Homescreen extends StatefulWidget {
  static const routename = '/';

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF1a322b),
      ),
      drawer: MainDrawer(height: height),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    Newswidget(article: articles[index]));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
