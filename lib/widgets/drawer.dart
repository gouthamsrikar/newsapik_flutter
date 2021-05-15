import 'package:flutter/material.dart';
import 'package:newsapk/screens/profile_screen.dart';
import 'package:newsapk/screens/videos_screen.dart';

class MainDrawer extends StatelessWidget {
  final double height;
  MainDrawer({@required this.height});

  Widget categoryname(String categorie, Function excute) {
    return ListTile(
      title: Text(categorie),
      onTap: excute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: height / 4,
            color: Color(0XFF1a322b),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Divider(
                  color: Colors.white,
                ),
                categoryname(
                  'Home',
                  () => Navigator.of(context).pushReplacementNamed('/'),
                ),
                Divider(),
                categoryname(
                  'Videos',
                  () => Navigator.of(context)
                      .pushReplacementNamed(Videoscreen.routename),
                ),
                Divider(),
                categoryname(
                  'Profile',
                  () => Navigator.of(context)
                      .pushReplacementNamed(Profilescreen.routename),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
