import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.teal),
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
      ),
      body: new Builder(
        // Create an inner BuildContext so that the onPressed methods
        // can refer to the Scaffold with Scaffold.of().
        builder: (BuildContext context) {
          return new Center(
              child: new RaisedButton(
            child: new Text(
              "Click Me",
              style: new TextStyle(color: Colors.white),
            ),
            color: Colors.deepPurple,
            onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text("I am Snackbar"),
                  duration: new Duration(seconds: 3),
                )),
          ));
        },
      ),
    );
  }
}
