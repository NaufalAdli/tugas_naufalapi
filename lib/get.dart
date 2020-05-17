import 'package:flutter/material.dart';
import 'package:tugasnaufalapi/user_model.dart';



class getData extends StatefulWidget {
  @override
  _getDataState createState() => _getDataState();
}

class _getDataState extends State<getData> {
  User user = null;
final input1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Text((user != null)
                ? user.id + " | " + user.name :"Tidak Ada Data",),

            TextField(controller: input1),

            RaisedButton(onPressed: () {
              User.connectToAPI(input1.text).then((value){
                user = value;
                setState(() {});
              });
            },
              child: Text("GET DATA"),
            ),

            RaisedButton(
              child: Text('back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
