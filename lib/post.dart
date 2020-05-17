import 'package:flutter/material.dart';
import 'package:tugasnaufalapi/post_model.dart';

class postData extends StatefulWidget {
  @override
  _postDataState createState() => _postDataState();
}

class _postDataState extends State<postData> {
  @override
  PostResult postResult;
  final input1 = TextEditingController();
  final input2 = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.name + postResult.job :"Tidak Ada Data",),

              TextField(controller: input1,),
              TextField(controller: input2,),


              RaisedButton(onPressed: () {
                PostResult.connectToAPI(input1.text, input2.text).then((value)
                {postResult = value;
                  setState(() {});});
               },
                child: Text("KIRIM DATA"),
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
      ),
    );
  }
}
