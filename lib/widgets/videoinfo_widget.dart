import 'package:flutter/material.dart';
import 'package:newsapk/models/article.dart';

class Videoinfolist extends StatelessWidget {
  final Article article;
  Videoinfolist({@required this.article});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 10),
      height: height / 9,
      child: Row(
        children: [
          Container(
            height: height / 9,
            width: height / 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                image: NetworkImage(article.urlToImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.white,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    height: ((height / 9) / 2),
                    child: Text(
                      article.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      // softWrap: false,
                      style: TextStyle(
                          fontSize: (height / 7) / 7,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // Spacer(),
                Container(
                  height: (height / 9) / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.grey,
                      ),
                      Container(
                        child: Text(
                          article.publishedAt.substring(0, 10),
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          alignment: Alignment.center,
                          child: Text(
                            'sports',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            color: Colors.orange[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
