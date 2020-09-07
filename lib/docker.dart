import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DockerFile extends StatefulWidget {
  @override
  _DockerFileState createState() => _DockerFileState();
}

class _DockerFileState extends State<DockerFile> {
  var cmd;
  var mydata;

  myWeb(cmd) async {
    var url = 'http://00.000.000.00/cgi-bin/web.py?x=$cmd';
    var result = await http.get(url);
    setState(() {
      mydata = result.body;
    });
    print(mydata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Docker App',
          style: TextStyle(
              color: Colors.yellow.shade400,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 120),
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                Card(
                  color: Colors.transparent,
                  child: TextField(
                    cursorColor: Colors.yellow,
                    cursorWidth: 2.0,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    onChanged: (value) {
                      cmd = value;
                    },
                    textAlign: TextAlign.center,
                    autocorrect: false,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: ' write your cmd here',
                    ),
                  ),
                ),
                Card(
                  color: Colors.lightBlue.shade100,
                  child: FlatButton(
                    onPressed: () {
                      myWeb(cmd);
                    },
                    child: Text(
                      'Click Here',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Text(mydata ?? '\noutput coming here.......'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
