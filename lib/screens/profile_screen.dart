import 'package:flutter/material.dart';
import 'package:newsapk/widgets/drawer.dart';

class Profilescreen extends StatefulWidget {
  static const routename = '/profile';

  @override
  _ProfilescreenState createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0XFF1a322b),
      ),
      drawer: MainDrawer(height: height),
      body: Column(
        children: [
          Container(
            height: height / 4,
            width: width,
            padding: EdgeInsets.symmetric(vertical: (height / 4) * 0.1),
            decoration: BoxDecoration(color: Colors.grey[350]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: (height / 4) * 1 / 2,
                  width: (height / 4) * 1 / 2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular((height / 4) * 1 / 2)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fvtz2-1.fna.fbcdn.net/v/t1.6435-9/90245718_2603982573206837_7374722107252408320_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=a4a2d7&_nc_ohc=JIxI-J3fvOMAX9lJC4b&_nc_ht=scontent.fvtz2-1.fna&oh=9149122863437899398593154bdaf9e0&oe=60C52484'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.orange[800], width: 2),
                  ),
                ),
                Spacer(),
                Text(
                  'Goutham Srikar',
                  style: TextStyle(
                      color: Colors.orange[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: 25,
                  child: FlatButton(
                    child: Text(
                      'Edit profile',
                      style: TextStyle(
                        color: Colors.orange[800],
                      ),
                    ),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Location'),
                  maxLines: 2,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.multiline,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Pincode'),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date of Birth'),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.datetime,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Gender'),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Whatsapp'),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  maxLines: 1,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
