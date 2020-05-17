import 'package:flutter/material.dart';
import 'package:tugasnaufalapi/get.dart';
import 'package:tugasnaufalapi/post.dart';

class home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(" Naufal APP (API GET POST) "),),

        body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text(' POST '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return postData();
                }));
              },
            ),
            RaisedButton(
              child: Text(' GET '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return getData();
                }));
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}
