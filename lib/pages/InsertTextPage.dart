import 'package:flutter/material.dart';

class InsertTextPage extends StatefulWidget {
  @override
  _InsertTextPageState createState() => _InsertTextPageState();
}

class _InsertTextPageState extends State<InsertTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Insert a text'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body:
        Column(
          children: <Widget>[
            Container(
              width: 400,
              height: 200,
              margin: EdgeInsets.all(20.0),
              child:TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Insert a text to generate'
                ),
              ) ,
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3
                  ),
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton.extended(
                    onPressed: (){},
                    icon: Icon(Icons.loop),
                    heroTag: "generateBtn",
                    label: Text('Generate'),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    heroTag: "downloadBtn",
                    child: Icon(Icons.file_download),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    heroTag: "shareBtn",
                    child: Icon(Icons.share),
                  ),
                ],
              ),
            ),
        ],
        ),
    );
  }
}
