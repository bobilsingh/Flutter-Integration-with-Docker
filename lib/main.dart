import 'package:DockerApp/docker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Docker App',
          style: TextStyle(
              color: Colors.yellow.shade400,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/backimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                height: 250,
                child: Card(
                  child: Image.asset('assets/dockerimage.png'),
                  color: Colors.transparent,
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 250,
                child: Card(
                  child: Text(
                    'Hello Everyone,\n\nIf you want to run docker on your mobile phone top of the linux and also use linux environment so this app for you.\n\n@BOBIL SINGH',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  color: Colors.transparent,
                ),
              ),
              Container(
                width: 180,
                height: 60,
                child: new Card(
                  child: new RaisedButton(
                    color: Colors.blue.shade900,
                    child: Text(
                      'START',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DockerFile())),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
