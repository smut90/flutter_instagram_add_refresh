import 'package:flutter/material.dart';

import './insta_body.dart';

class InstaHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0, child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

    final bottomNavigation = new Container(
      color: Colors.white,
      height: 50,
      child: new BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(icon: Icon(Icons.home), onPressed: () {},),
            new IconButton(icon: Icon(Icons.search),onPressed: () {},),
            new IconButton(icon: Icon(Icons.add_box),onPressed: null,),
            new IconButton(icon: Icon(Icons.favorite),onPressed: null,),
            new IconButton(icon: Icon(Icons.account_box),onPressed: null,),
          ],
        ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new InstaBody(),
      bottomNavigationBar: bottomNavigation,
    );
  }
}