import 'package:flutter/material.dart';
import 'package:newsapk/widgets/drawer.dart';
import 'package:newsapk/widgets/video_player_widget.dart';
import 'package:newsapk/models/article.dart';
import 'package:newsapk/news_api.dart';
import 'package:newsapk/widgets/videoinfo_widget.dart';

class Videoscreen extends StatefulWidget {
  static const routename = '/videos';

  @override
  _VideoscreenState createState() => _VideoscreenState();
}

class _VideoscreenState extends State<Videoscreen> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF1a322b),
      ),
      drawer: MainDrawer(height: height),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: width,
              child: Text(
                'Videos',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Videoplayer(),
            Container(
              // height: ((height / 7) / 3),

              child: Text(
                'Perfect News doesnt exist',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                // softWrap: false,
                style: TextStyle(
                    fontSize: (height / 7) / 7, fontWeight: FontWeight.bold),
              ),
              width: width * 0.9,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Text(
                DateTime.now().toString().substring(0, 10),
                style: TextStyle(color: Colors.grey),
              ),
              width: width * 0.9,
            ),
            Container(
              // height: ((height / 7) / 3),
              width: width * 0.9,
              margin: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Text(
                'Perfect information is also doesnt exist and cannot be found',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                // softWrap: false,
                style:
                    TextStyle(fontSize: (height / 7) / 7, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: FlatButton(
                child: Text(
                  'Information',
                  style: TextStyle(
                      fontSize: (height / 7) / 7, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              width: width * 0.9,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black38)],
                  color: Colors.grey[200]),
            ),
            Expanded(
              child: FutureBuilder(
                future: client.getArticle(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                        itemCount: articles.length,
                        itemBuilder: (context, index) =>
                            Videoinfolist(article: articles[index]));
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
