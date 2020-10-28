import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: Scaffold(
        key: scaffoldKey,
        endDrawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("John Doe | Class of 2022"),
                accountEmail: new Text("john.doe@vanderbilt.edu"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage("https://cdn.pixabay.com/photo/2019/02/13/18/46/model-3994985__480.jpg"),
                  ),
                ),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage("https://cdn.pixabay.com/photo/2018/09/03/23/56/sea-3652697__480.jpg"),
                    )
                ),
              ),
              new ListTile(
                  title: new Text("Profile"),
                  trailing: new Icon(Icons.account_circle_outlined)
              ),
              new Divider(),
              new ListTile(
                  title: new Text("Settings"),
                  trailing: new Icon(Icons.settings)
              ),
              new Divider(),
              new ListTile(
                  title: new Text("Patch Notes"),
                  trailing: new Icon(Icons.anchor)
              ),
              new Divider(),
              new ListTile(
                  title: new Text("Logout"),
                  trailing: new Icon(Icons.cancel)
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            new Center(
                child: new Column(
                  children: <Widget>[],
                )),
            Positioned(
              right: -10,
              top: -10,
              child: IconButton(
                iconSize: 55,
                icon: Icon(Icons.account_box_outlined,),
                onPressed: () => scaffoldKey.currentState.openEndDrawer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

