import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://picsum.photos/200/200.jpg",
            ),
            radius: 50.0,
          ),
          Text(
            "Some Name",
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
          Text(
            "Job Title",
            style: TextStyle(
              color: Colors.green[400],
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Divider(
              color: Colors.teal[400],
            ),
          ),
          InfoBox(
            text: "123-123-1234",
            icon: Icons.phone,
          ),
          InfoBox(
            text: "test@test.com",
            icon: Icons.email,
          ),
        ],
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String text;
  final IconData icon;
  const InfoBox({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      height: 50.0,
      child: Material(
        elevation: 10.0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                icon,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
